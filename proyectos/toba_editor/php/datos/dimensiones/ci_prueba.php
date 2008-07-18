<?php 

class ci_prueba extends toba_ci
{
	protected $fuente;
	protected $s__sqls_elegidos = array();
	protected $s__sqls_a_ejecutar = array();
	protected $s__detalle_test = array();
	protected $cabecera_prueba = '';
	protected $pruebas = array();
	
	function ini()
	{
		if ($editable = toba::zona()->get_editable()) {
			$this->fuente = $editable[1];
			if(! $this->dep('datos')->esta_cargada() ) {
				$this->dep('datos')->cargar(array('fuente_datos'=>$this->fuente));
				$datos = $this->dep('datos')->get();
				// Si no hay lote, saco la pantalla de la prueba
				if($datos['usuario'] == '') {
					$this->set_pantalla('sql');
					$this->pantalla()->eliminar_tab('test');
				}				
				// Seteo elegidos
				if($datos['clave']) {
					$this->s__sqls_elegidos = explode(',',$datos['clave']);					
				}
				// Seteo los parametros del TEST
				if($datos['base']) {
					$this->s__detalle_test = unserialize(stripslashes($datos['base']));					
				}
			}
		}else{
			throw new toba_error('ERROR: Esta operacion debe ser llamada desde la zona de fuentes');
		}	
	}
	
	//-- Obtener salida de la prueba --------------------------------------------
	
	function get_cabecera_prueba()
	{
		return $this->cabecera_prueba;	
	}
	
	function get_pruebas_realizadas()
	{
		return $this->pruebas;
	}

	//-- Elegir SQLs a probar --------------------------------------------

	function evt__form_elegir_sql__modificacion($datos)
	{
		unset($this->s__sqls_elegidos);
		unset($this->s__sqls_a_ejecutar);
		foreach($datos as $id => $dato) {
			if($dato['utilizar']) {
				$this->s__sqls_elegidos[] = $id;
				$this->s__sqls_a_ejecutar[] = trim($dato['sql']);
			}
		}
	}

	function conf__form_elegir_sql(toba_ei_formulario_ml $form_ml)
	{
		$form_ml->set_datos( $this->get_sqls_form() );
	}

	function get_sqls_form()
	{
		$datos = $this->dep('datos')->get();
		$sqls = explode(';',$datos['usuario']);
		$temp = array();
		foreach($sqls as $id => $sql) {
			if($sql) {
				$temp[$id]['sql'] = trim($sql);
				if( isset( $this->s__sqls_elegidos )) {
					if( in_array($id, $this->s__sqls_elegidos) ) {
						$temp[$id]['utilizar'] = 1;
					} else {
						$temp[$id]['utilizar'] = 0;
					}
				}
			}	
		}
		return $temp;
	}

	//-- Ejecuto pruebas ---------------------------------------------------

	function conf__test($pantalla)
	{
		if( count($this->get_perfiles_datos()) == 0 ) {
			$pantalla->eliminar_dep('form_elegir_sql');
			$pantalla->eliminar_dep('form_test');
			$pantalla->eliminar_evento('ejecutar');
			$pantalla->set_descripcion('No hay perfiles de datos definidos para el proyecto. Utilice el proyecto toba_usuarios para crearlos.');
		}	
	}

	function evt__form_test__modificacion($datos)
	{
		$this->s__detalle_test = $datos;
	}

	function conf__form_test(toba_ei_formulario $form)
	{
		if(isset($this->s__detalle_test)) {
			$form->set_datos($this->s__detalle_test);	
		}
	}

	function get_perfiles_datos()
	{
		$proyecto = toba_editor::get_proyecto_cargado();
		return toba_proyecto_implementacion::get_perfiles_datos($proyecto);
	}

	function evt__ejecutar()
	{
		if( isset($this->s__sqls_elegidos) ) {
			$this->grabar_info_test();
			$this->ejecutar_test();
			$this->dep('form_elegir_sql')->colapsar();
			$this->dep('form_test')->colapsar();
		}
	}

	function grabar_info_test()
	{
		$temp['clave'] = implode(',',$this->s__sqls_elegidos);
		$temp['base'] = addslashes(serialize($this->s__detalle_test));
		$this->dep('datos')->set($temp);
		$this->dep('datos')->sincronizar();			
	}
	
	function ejecutar_test()
	{
		toba::perfil_de_datos()->set_perfil( toba_editor::get_proyecto_cargado(), $this->s__detalle_test['perfil_datos']);		
		$this->cabecera_prueba = toba::perfil_de_datos()->get_info($this->fuente);
		if (toba::perfil_de_datos()->posee_restricciones($this->fuente)) {
			$this->pruebas = toba::perfil_de_datos()->probar_sqls( 	$this->fuente, 
																	$this->s__sqls_a_ejecutar,
																	$this->s__detalle_test['datos_filas'],
																	$this->s__detalle_test['datos_listar'] );
			// Oculto la informacion que no se solicito
			foreach( array_keys($this->pruebas) as $id) {
				// Ocultar no procesados
				if(! $this->pruebas[$id]['modificado'] && $this->s__detalle_test['omitir_no_afectados'] ) {
					unset($this->pruebas[$id]);
				}
				// Ocultar el SQL original
				if(! $this->s__detalle_test['sql_original']) {
					unset($this->pruebas[$id]['sql_original']);
				}
				// Ocultar analisis de dimensiones
				if(! $this->s__detalle_test['info_dimensiones']) {
					unset($this->pruebas[$id]['gatillos']);
					unset($this->pruebas[$id]['dimensiones']);
				}
				// Ocultar el WHERE
				if(! $this->s__detalle_test['sql_where']) {
					unset($this->pruebas[$id]['where']);
				}			
				// Ocultar SQL modificado
				if(! $this->s__detalle_test['sql_modificado']) {
					unset($this->pruebas[$id]['sql_modificado']);
				}
			}
		} else {
			toba::notificacion()->agregar('El perfil seleccionado no tiene restricciones aplicables');
		}	
	}

	//-- Manejo del lote de prueba ---------------------------------------------------

	function evt__form_sql__modificacion($datos)
	{
		$temp['usuario'] = $datos['sql'];
		$temp['clave'] = null;
		$this->dep('datos')->set($temp);
	}

	function conf__form_sql(toba_ei_formulario $form)
	{
		$datos = $this->dep('datos')->get();
		$temp['sql'] = $datos['usuario'];
		$form->set_datos($temp);		
	}

	function evt__guardar()
	{
		$this->dep('datos')->sincronizar();
	}
}

?>