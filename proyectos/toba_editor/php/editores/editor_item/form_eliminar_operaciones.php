<?php 
class form_eliminar_operaciones extends toba_ei_formulario_ml
{

	//-----------------------------------------------------------------------------------
	//---- JAVASCRIPT -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	function extender_objeto_js()
	{
		echo "
		//---- Validacion general ----------------------------------
		
		{$this->objeto_js}. = function()
		{
		}
		";
	}
}

?>