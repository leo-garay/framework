<?
require_once('comando_toba.php');
/**
*	Publica los servicios de la clase PROYECTO a la consola toba
*
*	@todo	La asociacion de usuarios al proyecto nuevo tiene que ofrecer una seleccion
*	
*/
class comando_proyecto extends comando_toba
{
	static function get_info()
	{
		return 'Administracion de PROYECTOS';
	}

	function mostrar_observaciones()
	{
		$this->consola->mensaje("INVOCACION: toba proyecto OPCION [-p id_proyecto] [-i id_instancia]");
		$this->consola->enter();
		$this->get_info_parametro_proyecto();
		$this->get_info_parametro_instancia();
		$this->consola->enter();
	}

	//-------------------------------------------------------------
	// Opciones
	//-------------------------------------------------------------

	/**
	*	Brinda informacion sobre los METADATOS del proyecto.
	*/
	function opcion__info()
	{
		$p = $this->get_proyecto();
		$param = $this->get_parametros();
		$this->consola->titulo( "Informacion sobre el PROYECTO '" . $p->get_id() . "' en la INSTANCIA '" .  $p->get_instancia()->get_id() . "'");
		if ( isset( $param['-c'] ) ) {
			// COMPONENTES
			$this->consola->subtitulo('Listado de COMPONENTES');
			$this->consola->tabla( $p->get_lista_componentes() , array( 'Tipo', 'Cantidad') );
		} elseif ( isset( $param['-g'] ) ) {
			// GRUPOS de ACCESO
			$this->consola->subtitulo('Listado de GRUPOS de ACCESO');
			$this->consola->tabla( $p->get_lista_grupos_acceso() , array( 'ID', 'Nombre') );
		} else {										
			$this->consola->subtitulo('Reportes');
			$subopciones = array( 	'-c' => 'Listado de COMPONENTES',
									'-g' => 'Listado de GRUPOS de ACCESO' ) ;
			$this->consola->coleccion( $subopciones );			
		}
	}

	/**
	*	Exporta los METADATOS del proyecto.
	*/
	function opcion__exportar()
	{
		$p = $this->get_proyecto();
		$p->exportar();
		$p->get_instancia()->exportar_local();
	}

	/**
	 * Exporta los METADATOS y luego actualiza el proyecto (usando svn)
	 */
	function opcion__actualizar()
	{
		$this->consola->titulo("1.- Exportando METADATOS");		
		$this->opcion__exportar();

		$this->consola->titulo("2.- Actualizando el proyecto utilizando SVN");
		$p = $this->get_proyecto();		
		$p->actualizar();		
	}
	
	/**
	*	Elimina los METADATOS del proyecto y los vuelve a cargar.
	*/
	function opcion__regenerar()
	{
		$this->get_proyecto()->regenerar();
	}

	/**
	*	Carga el PROYECTO en la INSTANCIA (Carga metadatos y crea un vinculo entre ambos elementos).
	*/
	function opcion__cargar()
	{
		$p = $this->get_proyecto();
		$i = $p->get_instancia();
		if ( ! $i->existen_metadatos_proyecto( $p->get_id() ) ) {

			//-- 1 -- Cargar proyecto
			$this->consola->enter();
			$this->consola->subtitulo("Carga del Proyecto ".$p->get_id());
			$i->vincular_proyecto( $p->get_id() );
			$p->cargar_autonomo();
			$this->consola->mensaje("Vinculando USUARIOS...", false);			
			$usuarios = $this->seleccionar_usuarios( $p->get_instancia() );
			$grupo_acceso = $this->seleccionar_grupo_acceso( $p );
			$cant_usuarios = 0;
			foreach ( $usuarios as $usuario ) {
				$p->vincular_usuario( $usuario, $grupo_acceso );
				logger::instancia()->debug("Vinculando USUARIO: $usuario, GRUPO ACCESO: $grupo_acceso");
				$cant_usuarios++;
			}
			$this->consola->mensaje("$cant_usuarios usuarios.");
			
			//-- 2 -- Exportar proyecto
			$this->consola->enter();
			// Exporto la instancia con la nueva configuracion (por fuera del request)
			$i->exportar_local();
		} else {
			$this->consola->mensaje("El proyecto '" . $p->get_id() . "' ya EXISTE en la instancia '".$i->get_id()."'");	
		}
	}

	/**
	*	Elimina el PROYECTO de la INSTANCIA (Elimina los metadatos y el vinculo entre ambos elementos).
	*/
	function opcion__eliminar()
	{
		$id_proyecto = $this->get_id_proyecto_actual();
		if ( $id_proyecto == 'toba' ) {
			throw new excepcion_toba("No es posible eliminar el proyecto 'toba'");
		}	
		$p = $this->get_proyecto();
		if ( $this->consola->dialogo_simple("Desea ELIMINAR los metadatos y DESVINCULAR el proyecto '"
				.$id_proyecto."' de la instancia '"
				.$this->get_id_instancia_actual()."'") ) {
			$p->eliminar_autonomo();
		}
		$p->get_instancia()->desvincular_proyecto( $p->get_id() );
	}
	
	/**
	*	Crea un proyecto NUEVO.
	*/
	function opcion__crear()
	{
		$id_proyecto = $this->get_id_proyecto_actual();
		$instancia = $this->get_instancia();
		$id_instancia = $instancia->get_id();

		// -- 1 -- Creo el proyecto
		$this->consola->mensaje( "Creando el proyecto '$id_proyecto' en la instancia '$id_instancia'" );
		$usuarios = $this->seleccionar_usuarios( $instancia );
		proyecto::crear( $instancia, $id_proyecto, $usuarios );

		// -- 2 -- Exporto el proyecto creado
		$this->consola->mensaje( "Exportando metadatos iniciales" );
		$proyecto = $this->get_proyecto();
		$proyecto->exportar();
		$instancia->exportar_local();
		$this->consola->separador();
		$this->consola->mensaje( "El proyecto ha sido creado. Si se desea crear un acceso WEB al mismo" .
									" agrege al archivo de configuracion de apache ('httpd.conf') las directivas" .
									" existentes en el archivo '".toba_dir()."/proyectos/$id_proyecto/toba.conf'" );
		$this->consola->separador();
	}

	/**
	*	Compila los METADATOS del proyecto.
	*/
	function opcion__compilar()
	{
		$this->get_proyecto()->compilar();
	}
	
	/**
	 * Migra un proyecto entre dos versiones toba. [-d 'desde']  [-h 'hasta'] [-m 'metodo']
	 * -d se asume la versi�n de toba que posee actualmente el proyecto
	 * -h se asume la versi�n de toba que posee actualmente la instalacion
	 * -m ejecuta solo un metodo de la migraci�n (incluir nombre completo)
	 */
	function opcion__migrar()
	{
		$proyecto = $this->get_proyecto();
		//--- Parametros
		$param = $this->get_parametros();
		$desde = isset($param['-d']) ? new version_toba($param['-d']) : $proyecto->get_version_actual();
		$hasta = isset($param['-h']) ? new version_toba($param['-h']) : instalacion::get_version_actual();

		$desde_texto = $desde->__toString();
		$hasta_texto = $hasta->__toString();
		$this->consola->titulo("Migraci�n el proyecto '{$proyecto->get_id()}'"." desde la versi�n $desde_texto hacia la $hasta_texto.");

		if (! isset($param['-m'])) {
			$versiones = $desde->get_secuencia_migraciones($hasta);
			if (empty($versiones)) {
				$this->consola->mensaje("No es necesario ejecutar una migraci�n entre estas versiones para el proyecto '{$proyecto->get_id()}'");
				return ;
			}
			$proyecto->migrar_rango_versiones($desde, $hasta, false);
		} else {
			//Se pidio un m�todo puntual
			$proyecto->ejecutar_migracion_particular($hasta, trim($param['-m']));
		}
	}	
}
?>