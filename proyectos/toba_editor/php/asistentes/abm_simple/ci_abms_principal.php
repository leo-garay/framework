<?php 

class ci_abms_principal extends toba_ci
{
	function set_molde($proyecto, $id)
	{
		$this->dep('datos')->cargar(array('proyecto' => $proyecto, 'molde' => $id));
	}
	
	function set_molde_nuevo()
	{
		$datos_basicos = array('proyecto' =>  toba_editor::get_proyecto_cargado());
		$this->dep('datos')->tabla('base')->set($datos_basicos);	
	}
	
	function sincronizar()
	{
		$this->dep('datos')->sincronizar();	
	}
	
	function get_tablas()
	{
		return toba_editor::get_db_defecto()->get_lista_tablas();
	}
	
	//---- Basico ----------------------------------------

	function get_nombre_tabla_actual()
	{
		return $this->dep('datos')->tabla('base')->get_columna('tabla');		
	}
	
	function conf__pant_basica()
	{
		if ($this->get_nombre_tabla_actual() == '') {
			$this->pantalla()->eliminar_dep('form_filas');
		}
	}
	
	function evt__form_basico__modificacion($datos)
	{
		$this->dep('datos')->tabla('base')->set($datos);
	}

	function conf__form_basico(toba_ei_formulario $form)
	{
		return $this->dep('datos')->tabla('base')->get();
	}
	
	function conf__form_filas(toba_ei_formulario_ml $ml)
	{
		$tabla = $this->dep('datos')->tabla('filas');
		//--- Recorre las columnas y las rellenas con los nuevos datos
		$actuales =  $tabla->get_filas(null, true);
		$nuevas = toba_editor::get_db_defecto()->get_definicion_columnas($this->get_nombre_tabla_actual());
		
		//-- Borro las filas viejas que ya no estan en la tabla
		foreach ($actuales as $id => $actual) {
			$existe = false;
			foreach ($nuevas as $nueva) {
				if ($nueva['nombre'] == $actual['columna']) {
					$existe = true;
					break;	
				}
			}
			if (!$existe) {
				$tabla->eliminar_fila($id);
			}
		}
		
		//-- Agrega las filas nuevas
		foreach ($nuevas as $nueva) {
			$existe = false;
			foreach ($actuales as $id => $actual) {
				if ($nueva['nombre'] == $actual['columna']) {
					$existe = true;
					break;	
				}
			}
			if (!$existe) {
				$datos = array();
				$datos['columna'] = $nueva['nombre'];
				$datos['etiqueta'] = $nueva['nombre'];
				$tabla->nueva_fila($datos);
			}
		}		
		
		//--- Rellena el ML
		$ml->set_proximo_id($tabla->get_proximo_id());
		$ml->set_datos( $tabla->get_filas());		
	}
	
	function evt__form_filas__modificacion($datos)
	{
		$this->dep('datos')->tabla('filas')->procesar_filas($datos);
	}
}

?>