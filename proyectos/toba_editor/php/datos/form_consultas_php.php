<?php

class form_consultas_php extends toba_ei_formulario
{
	
	function extender_objeto_js()
	{
		echo "						
			{$this->objeto_js}.evt__archivo__procesar = function(inicial) {
				if (!inicial && this.ef('clase').valor() == '') {
					var archivo = this.ef('archivo').valor();
					var basename = archivo.replace( /.*\//, '' );
					var clase = basename.substring(0, basename.lastIndexOf('.'));
					this.ef('clase').cambiar_valor(clase);
				}
			}

			{$this->objeto_js}.modificar_vinculo__ef_archivo = function(id_vinculo)
			{
				var estado = this.ef('punto_montaje').get_estado();
				vinculador.agregar_parametros(id_vinculo, {'punto_montaje': estado});
			}

			{$this->objeto_js}.evt__punto_montaje__procesar = function(inicial)
			{
				if (!inicial) {
					this.ef('archivo').cambiar_valor('');
					this.ef('clase').cambiar_valor('');
				}
			}
		";
	}
	

}

?>