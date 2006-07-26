<?
	if($editable = $this->zona->get_editable()){
	//--> Estoy navegando la ZONA con un editable...
		//-[1]- Cargo la lista de Objetos
		$lista = $this->cargar_objeto("objeto_lista",0);
		if($lista > -1){
			//-[2]- Cargo el ABM que permite asociar objetos
			$abms = $this->cargar_objeto("objeto_mt_abms",0);
			if($abms > -1){
				//$this->zona->info();
				$cargar_ef = array( "origen_item_proyecto"=>editor::get_proyecto_cargado(),
									"origen_item"=>"/autovinculo",
									"origen_objeto_proyecto"=>$editable[0],
									"origen_objeto"=>$editable[1]);
				$this->objetos[$abms]->cargar_estado_ef($cargar_ef);
				$this->objetos[$abms]->procesar();
				$this->objetos[$lista]->cargar_datos(array("(origen_objeto_proyecto = '".$editable[0]."') ",
															"(origen_objeto = '".$editable[1]."') " ) );
				$this->zona->obtener_html_barra_superior();
				$this->objetos[$lista]->obtener_html();
				$this->objetos[$abms]->obtener_html();
				$this->zona->obtener_html_barra_inferior();

				//$this->objetos[$abms]->info_estado();		

			}else{
				echo ei_mensaje("No fue posible instanciar el ABM");
			}
		}else{
			echo ei_mensaje("No fue posible instanciar el LISTADO");
		}
	}else{
		echo ei_mensaje("No se especifico que EDITABLE utilizar");
	}
?>
