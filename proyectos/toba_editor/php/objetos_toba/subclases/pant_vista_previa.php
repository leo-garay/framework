<?php 
class pant_vista_previa extends toba_ei_pantalla
{
	function generar_layout()
	{
		//--- Barra SVN
		echo "<div class='editor-vista-previa'>".$this->controlador()->get_info_archivo();
		echo "<div>";
		$this->generar_botones_eventos(true);
		echo "</div></div>";

		//--- Barra de convenciones
		$mensajes_linea = array();
		$modelo = toba_editor::get_modelo_proyecto();
		$estandar = $modelo->get_estandar_convenciones();
		$path = $this->controlador()->get_path_archivo();
		$resultado = $estandar->validar(array($path));
		$titulo = "<strong>Convenciones</strong>";
		$cant_errores = $resultado['totals']['errors'];
		$cant_warnings = $resultado['totals']['warnings'];
			$extra = '';
		if ($cant_errores === 0 && $cant_warnings === 0) {
			$nivel = 'info';
			$salida = 'Ok!';
		} else {
			$nivel = ($cant_errores !== 0) ? 'error' : 'warning';
			$salida = "$cant_errores ";
			$salida .= ($cant_errores !== 1) ? 'errores' : 'error';
			$salida .= " / $cant_warnings ";
			$salida .= ($cant_warnings !== 1) ? 'avisos' : 'aviso';
			foreach ($resultado['files'][$path]['messages'] as $linea => $columnas) {
				$textos = array();
                foreach ($columnas as $column => $mensajes) {
                    foreach ($mensajes as $mensaje) {
						//$extra .= "<strong>$linea</strong>:{$mensaje['message']}";
						$imagen = ($mensaje['type'] == 'ERROR') ? 'error.gif' : 'warning.gif';
						$textos[] = $estandar->parsear_mensaje($mensaje['message']);	//Cambia el id de la convencion por una url
					}
				}
				$mensajes_linea[$linea] = toba_recurso::imagen_toba($imagen, true, null, null, implode('<br><br>', $textos));
			}


			/*$extra = "<a href='#'>ver detalle</a>";
			$extra .= "<div class='editor-convenciones-tabla'>";
			foreach ($resultado['files'][$path]['messages'] as $linea => $columnas) {
				$extra .= "<div>";
                foreach ($columnas as $column => $mensajes) {
                    foreach ($mensajes as $mensaje) {
						$extra .= "<strong>$linea</strong>:{$mensaje['message']}";
					}
				}
				$extra .= "</div>";
			}
			$extra .= "</div>";
			 */

		}
		$this->generar_html_descripcion("$titulo: $salida $extra", $nivel);

		//-- Vista previa
		echo "<div class='editor-vista-previa-codigo'>";
		$codigo = $this->controlador()->get_previsualizacion();
		require_once(toba_dir()."/php/3ros/PHP_Highlight.php");
		$h = new PHP_Highlight(false);
		$h->loadString($codigo);
		$formato_linea = "<span class='editor-linea-codigo'>%02d</span>&nbsp;&nbsp;";
		echo @$h->toHtml(true, true, $formato_linea, true, $mensajes_linea);
		echo "</div>";
	}
}

?>