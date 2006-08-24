<?php
require_once('nucleo/componentes/interface/objeto_ei_formulario.php'); 
//----------------------------------------------------------------
class form_opciones extends objeto_ei_formulario
{
	function extender_objeto_js()
	{
		echo "
			{$this->objeto_js}.evt__identificador__validar = function() {
				if (this.ef('con_destino').chequeado() && 
					(this.ef('tipo').valor() == 'objeto_ci' || 
						this.ef('tipo').valor() == 'objeto_datos_relacion')) {	
					if (this.ef('identificador').valor() == '') {
						this.ef('identificador').set_error('El identificador es obligatorio');
						return false
					}
				}
				return true;
			}
			
			
			{$this->objeto_js}.evt__con_destino__procesar = function(inicial) {
				if (this.ef('con_destino').chequeado()) {
					this.ef('tipo').mostrar();
					this.ef('objeto_id').mostrar();		
				} else { 
					this.ef('tipo').ocultar();
					this.ef('objeto_id').ocultar();
				}
				this.evt__tipo__procesar(inicial);
			}
			
			{$this->objeto_js}.evt__tipo__procesar = function(inicial) {
				this.ef('ci_pantalla').ocultar();
				this.ef('identificador').ocultar();
				this.ef('min_filas').ocultar();
				this.ef('max_filas').ocultar();

				if (this.ef('con_destino').chequeado()) {
					switch (this.ef('tipo').valor()) {
						case 'objeto_ci':
							this.ef('ci_pantalla').mostrar();
							this.ef('identificador').mostrar();
							break;
						case 'objeto_datos_relacion':
							this.ef('identificador').mostrar();
							this.ef('min_filas').mostrar();
							this.ef('max_filas').mostrar();
							break;
					} 
				}
			}
			
			{$this->objeto_js}.evt__con_subclases__procesar = function(inicial) {
				if (this.ef('con_subclases').chequeado()) {
					this.ef('carpeta_subclases').mostrar();
				} else {
					this.ef('carpeta_subclases').ocultar();
				}
			}
			
			{$this->objeto_js}.evt__carpeta_subclases__validar = function() {
				if (this.ef('con_subclases').chequeado() &&
					this.ef('carpeta_subclases').valor().trim() == '') {
			 		this.ef('carpeta_subclases').set_error('Debe incluir un path');
			 		return false;
				}
				return true;
			}			
		";
	}


}

?>