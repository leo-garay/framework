<?php

class toba_filtro_columna_cadena extends toba_filtro_columna
{
	protected $_condiciones = array(
			'es_igual_a' 	=> array('etiqueta' => 'es igual a',		'operador_sql' => '=',			'pre' => '', 	'post' => '', 	'casting' => '::varchar'),	
			'comienza_con' 	=> array('etiqueta' => 'comienza con',		'operador_sql' => 'ILIKE',		'pre' => '', 	'post' => '%',	'casting' => '::varchar'),
			'termina_con' 	=> array('etiqueta' => 'termina con',		'operador_sql' => 'ILIKE',		'pre' => '%', 	'post' => '', 	'casting' => '::varchar'),
			'contiene' 		=> array('etiqueta' => 'contiene',			'operador_sql' => 'ILIKE',		'pre' => '%', 	'post' => '%', 	'casting' => '::varchar'),
			'no_contiene' 	=> array('etiqueta' => 'no contiene',		'operador_sql' => 'NOT ILIKE',	'pre' => '', 	'post' => '%', 	'casting' => '::varchar'),
			'es_distinto_de' => array('etiqueta' => 'es distinto de',	'operador_sql' => '!=',			'pre' => '', 	'post' => '', 	'casting' => '::varchar'),
	);
	
	function ini()
	{
		$this->_ef = new toba_ef_editable($this, null, $this->_datos['nombre'], $this->_datos['etiqueta'],
											null, null, false, array());
	}

	function tiene_condicion()
	{
		return ! empty($this->_condiciones);
	}
	
	function get_condicion()
	{
		
	}
	
	function cargar_estado_post()
	{
		if (isset($_POST[$this->_id_form_cond])) {
			$condicion = $_POST[$this->_id_form_cond];
			if (! isset($this->_condiciones[$condicion])) {
				throw new toba_error("La condicion '$condicion' no es una condicion v�lida");
			}
			$this->_ef->cargar_estado_post();			
			$this->_estado = array();
			$this->_estado['condicion'] = $condicion;
			$this->_estado['valor'] = $this->_ef->get_estado();
		}
	}
		
	
	function get_html_condicion()
	{
		$html = "<select id='{$this->_id_form_cond}' name='{$this->_id_form_cond}'>";
		foreach ($this->_condiciones as $id => $condicion) {
			$html .= "<option value='$id'>{$condicion['etiqueta']}</option>\n";
		}
		return $html;
	}
	
	function get_html_valor()
	{
		echo $this->_ef->get_input();
	}
}

?>