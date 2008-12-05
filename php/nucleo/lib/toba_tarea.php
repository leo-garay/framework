<?php

/**
 * Interface que deben respetar aquellas clases que deseen incluirse en el planificador de tareas
 */
interface toba_tarea
{
	function ejecutar();	
}

/**
 * Tarea generica que incluye y ejecuta un m�todo espec�fico de una clase
 */
class toba_tarea_php implements toba_tarea
{
	protected $clase;
	protected $archivo;
	protected $metodo;
	protected $parametros = array();
	
	function __construct($clase, $archivo_php=null)
	{
		$this->clase = $clase;
		$this->archivo = $archivo_php;
	}
	
	function ejecutar()
	{
		if (isset($this->archivo)) {
			require_once($this->archivo);
		}
		if (isset($this->clase)) {
			//-- Es un metodo de una clase
			call_user_func_array(array($this->clase, $this->metodo), $this->parametros);			
		} else {
			//-- Es una funcion
			call_user_func_array($this->metodo, $this->parametros);			
		}
	}
	
	function set_metodo($metodo)
	{
		$this->metodo = $metodo;
		$parametros = func_get_args();
		array_splice($parametros, 0 , 1);
		$this->parametros = $parametros;
	}	
	
}


?>