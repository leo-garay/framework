<?php

abstract class toba_elemento_perfil implements toba_nodo_arbol_form 
{
	protected $padre;
	protected $nombre_corto;
	protected $nombre_largo;
	protected $id = null;
	protected $grupo_acceso = null;
	protected $iconos = array();
	protected $utilerias = array();
	protected $info_extra = null;
	protected $tiene_hijos_cargados = false;
	protected $es_hoja = true;
	protected $hijos = array();
	protected $propiedades = null;
	protected $id_padre;
	protected $nivel;
	protected $camino;
	protected $carpeta = false;

	protected $oculto;
	protected $solo_lectura;
	protected $abierto = true;	

	protected $acceso_original;
	protected $acceso_actual;

	function __construct($datos, $grupo_acceso)
	{
		$this->id = $datos['item'];
		$this->grupo_acceso = $grupo_acceso;
		$this->proyecto = $datos['proyecto'];
		$this->nombre_corto = $datos['nombre'];
		$this->nombre_largo = $datos['descripcion'];
		$this->id_padre = $datos['padre'];
		$this->acceso_original = ($datos['acceso']!='') ? 1 : 0;
		$this->acceso_actual = $this->acceso_original;
	}

	//-- Sincronizacion ------------------------------------------------
	
	function sincronizar()
	{	
		if($this->acceso_original != $this->acceso_actual) {
			if ($this->acceso_actual == 1) {
				$sql = "INSERT INTO apex_usuario_grupo_acc_item ('proyecto','usuario_grupo_acc','item') VALUES (
						'$this->proyecto','$this->grupo_acceso','$this->id')";
			} else {
				$sql = "DELETE FROM apex_usuario_grupo_acc_item 
						WHERE item = '$this->id'
						AND usuario_grupo_acc = '$this->grupo_acceso'
						AND proyecto = '$this->proyecto'";
			}
			//toba::db()->ejecutar($sql);
			echo "$sql<br>";
		}
		return $this->acceso_actual;
	}

	function set_grupo_acceso($acceso)
	{
		$this->grupo_acceso = $acceso;
	}

	//-- Setters -------------------------------------------------------

	function agregar_utileria($utileria)
	{
		$this->utilerias[] = $utileria;
	}
	
	function agregar_icono($icono)	
	{
		$this->iconos[] = $icono;	
	}

	function agregar_hijo($hijo)
	{
		$this->hijos[] = $hijo;	
		$this->tiene_hijos_cargados = true;
		$this->es_hoja = false;
	}

	function set_hijos($hijos)
	{
		$this->hijos = $hijos;
		$this->tiene_hijos_cargados = true;
		$this->es_hoja = false;
	}	
		
	function set_utilerias($utilerias)
	{
		$this->utilerias = $utilerias;
	}
	
	function set_iconos($iconos)	
	{
		$this->iconos = $iconos;	
	}
	
	function set_padre($padre)
	{
		$this->padre = $padre;
	}
	
	function get_id_padre()
	{
		return $this->id_padre;	
	}
	
	function set_nivel($nivel)
	{
		$this->nivel = $nivel; 
	}
	
	function set_camino($camino)
	{
		$this->camino = $camino;
	}
	
	function es_carpeta()
	{
		return $this->carpeta;	
	}
	
	//-- Interface -----------------------------------------------------
	
	function get_id()
	{
		return $this->id;
	}
	
	function get_nombre_corto()
	{
		return $this->nombre_corto;
	}
	
	function get_nombre_largo()
	{
		return $this->nombre_largo;
	}
	
	function get_info_extra()
	{
		return $this->info_extra;
	}
	
	function get_iconos()
	{
		$iconos[] = array(
			'imagen' => toba_recurso::imagen_toba($this->icono, false),
			'ayuda' => "Carpeta que contiene operaciones.",
			);
		return $iconos;
	}
	
	function get_utilerias()
	{
		return $this->utilerias;
	}

	function get_padre()
	{
		return $this->padre;	
	}
	
	function tiene_hijos_cargados()
	{
		return $this->tiene_hijos_cargados;	
	}
	
	function es_hoja()
	{
		return $this->es_hoja;
	}
	
	function get_hijos()
	{
		return $this->hijos;
	}

	function tiene_propiedades()
	{
		return $this->propiedades;
	}

	function set_apertura($abierto) 
	{
		$this->abierto = $abierto;
	}
	
	function get_apertura() 
	{
		return $this->abierto;
	}	
}

?>