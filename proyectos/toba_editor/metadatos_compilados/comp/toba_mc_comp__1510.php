<?php

class toba_mc_comp__1510
{
	static function get_metadatos()
	{
		return array (
  '_info' => 
  array (
    'proyecto' => 'toba_editor',
    'objeto' => 1510,
    'anterior' => NULL,
    'identificador' => NULL,
    'reflexivo' => 1,
    'clase_proyecto' => 'toba',
    'clase' => 'toba_ei_formulario',
    'subclase' => 'eiform_prop_base',
    'subclase_archivo' => 'objetos_toba/eiform_prop_base.php',
    'objeto_categoria_proyecto' => 'toba',
    'objeto_categoria' => NULL,
    'nombre' => 'OBJETO - General - Propiedades BASE DATOS',
    'titulo' => NULL,
    'colapsable' => 0,
    'descripcion' => 'En esta interface se definen propiedades basicas de un objeto STANDART',
    'fuente_proyecto' => 'toba_editor',
    'fuente' => 'instancia',
    'solicitud_registrar' => NULL,
    'solicitud_obj_obs_tipo' => NULL,
    'solicitud_obj_observacion' => NULL,
    'parametro_a' => NULL,
    'parametro_b' => NULL,
    'parametro_c' => NULL,
    'parametro_d' => NULL,
    'parametro_e' => NULL,
    'parametro_f' => NULL,
    'usuario' => NULL,
    'creacion' => NULL,
    'punto_montaje' => 12,
    'clase_editor_proyecto' => 'toba_editor',
    'clase_editor_item' => '1000255',
    'clase_archivo' => 'nucleo/componentes/interface/toba_ei_formulario.php',
    'clase_vinculos' => NULL,
    'clase_editor' => '1000255',
    'clase_icono' => 'objetos/ut_formulario.gif',
    'clase_descripcion_corta' => 'ei_formulario',
    'clase_instanciador_proyecto' => 'toba_editor',
    'clase_instanciador_item' => '1842',
    'objeto_existe_ayuda' => NULL,
    'ap_clase' => NULL,
    'ap_archivo' => NULL,
    'ap_punto_montaje' => NULL,
    'cant_dependencias' => 0,
    'posicion_botonera' => 'abajo',
  ),
  '_info_eventos' => 
  array (
    0 => 
    array (
      'evento_id' => 87,
      'identificador' => 'modificacion',
      'etiqueta' => 'Modificacion',
      'maneja_datos' => 1,
      'sobre_fila' => NULL,
      'confirmacion' => NULL,
      'estilo' => NULL,
      'imagen_recurso_origen' => 'apex',
      'imagen' => NULL,
      'en_botonera' => 0,
      'ayuda' => NULL,
      'ci_predep' => NULL,
      'implicito' => 1,
      'defecto' => 0,
      'grupo' => NULL,
      'accion' => NULL,
      'accion_imphtml_debug' => NULL,
      'accion_vinculo_carpeta' => NULL,
      'accion_vinculo_item' => NULL,
      'accion_vinculo_objeto' => NULL,
      'accion_vinculo_popup' => NULL,
      'accion_vinculo_popup_param' => NULL,
      'accion_vinculo_celda' => NULL,
      'accion_vinculo_target' => NULL,
      'accion_vinculo_servicio' => NULL,
      'es_seleccion_multiple' => 0,
      'es_autovinculo' => 0,
    ),
    1 => 
    array (
      'evento_id' => 30000036,
      'identificador' => 'extender',
      'etiqueta' => 'Extender Componente',
      'maneja_datos' => 0,
      'sobre_fila' => NULL,
      'confirmacion' => NULL,
      'estilo' => NULL,
      'imagen_recurso_origen' => 'apex',
      'imagen' => 'nucleo/extender.gif',
      'en_botonera' => 1,
      'ayuda' => 'Extiende el comportamiento del componente v�a una subclase PHP',
      'ci_predep' => NULL,
      'implicito' => 0,
      'defecto' => 0,
      'grupo' => NULL,
      'accion' => 'V',
      'accion_imphtml_debug' => NULL,
      'accion_vinculo_carpeta' => '1000246',
      'accion_vinculo_item' => '3463',
      'accion_vinculo_objeto' => NULL,
      'accion_vinculo_popup' => 0,
      'accion_vinculo_popup_param' => NULL,
      'accion_vinculo_celda' => NULL,
      'accion_vinculo_target' => NULL,
      'accion_vinculo_servicio' => NULL,
      'es_seleccion_multiple' => 0,
      'es_autovinculo' => 0,
    ),
    2 => 
    array (
      'evento_id' => 33000156,
      'identificador' => 'personalizar',
      'etiqueta' => 'Personalizar Componente',
      'maneja_datos' => 0,
      'sobre_fila' => NULL,
      'confirmacion' => NULL,
      'estilo' => NULL,
      'imagen_recurso_origen' => 'apex',
      'imagen' => 'personalizacion.png',
      'en_botonera' => 1,
      'ayuda' => 'Personaliza el componente v�a una subclase PHP',
      'ci_predep' => NULL,
      'implicito' => 0,
      'defecto' => 0,
      'grupo' => NULL,
      'accion' => 'V',
      'accion_imphtml_debug' => NULL,
      'accion_vinculo_carpeta' => '1000246',
      'accion_vinculo_item' => '3463',
      'accion_vinculo_objeto' => NULL,
      'accion_vinculo_popup' => 0,
      'accion_vinculo_popup_param' => NULL,
      'accion_vinculo_celda' => NULL,
      'accion_vinculo_target' => NULL,
      'accion_vinculo_servicio' => NULL,
      'es_seleccion_multiple' => 0,
      'es_autovinculo' => 0,
    ),
  ),
  '_info_puntos_control' => 
  array (
  ),
  '_info_formulario' => 
  array (
    'auto_reset' => NULL,
    'ancho' => '100%',
    'ancho_etiqueta' => '150px',
    'expandir_descripcion' => 0,
    'no_imprimir_efs_sin_estado' => 0,
    'resaltar_efs_con_estado' => 0,
    'template' => NULL,
    'template_impresion' => NULL,
  ),
  '_info_formulario_ef' => 
  array (
    0 => 
    array (
      'objeto_ei_formulario_fila' => 1173,
      'objeto_ei_formulario' => 1510,
      'objeto_ei_formulario_proyecto' => 'toba_editor',
      'identificador' => 'nombre',
      'elemento_formulario' => 'ef_editable',
      'columnas' => 'nombre',
      'obligatorio' => 1,
      'oculto_relaja_obligatorio' => 0,
      'orden' => '1',
      'etiqueta' => 'Nombre',
      'etiqueta_estilo' => NULL,
      'descripcion' => 'Nombre del objeto',
      'colapsado' => 0,
      'desactivado' => 0,
      'estilo' => NULL,
      'total' => NULL,
      'inicializacion' => NULL,
      'permitir_html' => 0,
      'deshabilitar_rest_func' => 0,
      'estado_defecto' => NULL,
      'solo_lectura' => 0,
      'solo_lectura_modificacion' => 0,
      'carga_metodo' => NULL,
      'carga_clase' => NULL,
      'carga_include' => NULL,
      'carga_dt' => NULL,
      'carga_consulta_php' => NULL,
      'carga_sql' => NULL,
      'carga_fuente' => NULL,
      'carga_lista' => NULL,
      'carga_col_clave' => NULL,
      'carga_col_desc' => NULL,
      'carga_maestros' => NULL,
      'carga_cascada_relaj' => NULL,
      'cascada_mantiene_estado' => 0,
      'carga_permite_no_seteado' => 0,
      'carga_no_seteado' => NULL,
      'carga_no_seteado_ocultar' => NULL,
      'edit_tamano' => 50,
      'edit_maximo' => NULL,
      'edit_mascara' => NULL,
      'edit_unidad' => NULL,
      'edit_rango' => NULL,
      'edit_filas' => NULL,
      'edit_columnas' => NULL,
      'edit_wrap' => NULL,
      'edit_resaltar' => NULL,
      'edit_ajustable' => NULL,
      'edit_confirmar_clave' => NULL,
      'edit_expreg' => NULL,
      'popup_item' => NULL,
      'popup_proyecto' => NULL,
      'popup_editable' => NULL,
      'popup_ventana' => NULL,
      'popup_carga_desc_metodo' => NULL,
      'popup_carga_desc_clase' => NULL,
      'popup_carga_desc_include' => NULL,
      'popup_puede_borrar_estado' => NULL,
      'fieldset_fin' => NULL,
      'check_valor_si' => NULL,
      'check_valor_no' => NULL,
      'check_desc_si' => NULL,
      'check_desc_no' => NULL,
      'check_ml_toggle' => NULL,
      'fijo_sin_estado' => NULL,
      'editor_ancho' => NULL,
      'editor_alto' => NULL,
      'editor_botonera' => NULL,
      'editor_config_file' => NULL,
      'selec_cant_minima' => NULL,
      'selec_cant_maxima' => NULL,
      'selec_utilidades' => NULL,
      'selec_tamano' => NULL,
      'selec_ancho' => NULL,
      'selec_serializar' => NULL,
      'selec_cant_columnas' => NULL,
      'upload_extensiones' => NULL,
      'punto_montaje' => 12,
      'placeholder' => NULL,
      'carga_consulta_php_clase' => NULL,
      'carga_consulta_php_archivo' => NULL,
    ),
    1 => 
    array (
      'objeto_ei_formulario_fila' => 1172,
      'objeto_ei_formulario' => 1510,
      'objeto_ei_formulario_proyecto' => 'toba_editor',
      'identificador' => 'fuente_datos',
      'elemento_formulario' => 'ef_combo',
      'columnas' => 'fuente_datos_proyecto, fuente_datos',
      'obligatorio' => 0,
      'oculto_relaja_obligatorio' => 0,
      'orden' => '2',
      'etiqueta' => 'Fuente de Datos',
      'etiqueta_estilo' => NULL,
      'descripcion' => '[wiki:Referencia/FuenteDatos Fuente de datos] a la que se conecta el objeto.',
      'colapsado' => 0,
      'desactivado' => 0,
      'estilo' => NULL,
      'total' => 0,
      'inicializacion' => NULL,
      'permitir_html' => NULL,
      'deshabilitar_rest_func' => NULL,
      'estado_defecto' => NULL,
      'solo_lectura' => 0,
      'solo_lectura_modificacion' => 0,
      'carga_metodo' => 'get_fuentes_datos',
      'carga_clase' => 'toba_info_editores',
      'carga_include' => 'modelo/info/toba_info_editores.php',
      'carga_dt' => NULL,
      'carga_consulta_php' => NULL,
      'carga_sql' => NULL,
      'carga_fuente' => 'instancia',
      'carga_lista' => NULL,
      'carga_col_clave' => 'proyecto, fuente_datos',
      'carga_col_desc' => 'descripcion_corta',
      'carga_maestros' => NULL,
      'carga_cascada_relaj' => 0,
      'cascada_mantiene_estado' => 0,
      'carga_permite_no_seteado' => 0,
      'carga_no_seteado' => NULL,
      'carga_no_seteado_ocultar' => 0,
      'edit_tamano' => NULL,
      'edit_maximo' => NULL,
      'edit_mascara' => NULL,
      'edit_unidad' => NULL,
      'edit_rango' => NULL,
      'edit_filas' => NULL,
      'edit_columnas' => NULL,
      'edit_wrap' => NULL,
      'edit_resaltar' => NULL,
      'edit_ajustable' => NULL,
      'edit_confirmar_clave' => NULL,
      'edit_expreg' => NULL,
      'popup_item' => NULL,
      'popup_proyecto' => NULL,
      'popup_editable' => NULL,
      'popup_ventana' => NULL,
      'popup_carga_desc_metodo' => NULL,
      'popup_carga_desc_clase' => NULL,
      'popup_carga_desc_include' => NULL,
      'popup_puede_borrar_estado' => NULL,
      'fieldset_fin' => NULL,
      'check_valor_si' => NULL,
      'check_valor_no' => NULL,
      'check_desc_si' => NULL,
      'check_desc_no' => NULL,
      'check_ml_toggle' => NULL,
      'fijo_sin_estado' => NULL,
      'editor_ancho' => NULL,
      'editor_alto' => NULL,
      'editor_botonera' => NULL,
      'editor_config_file' => NULL,
      'selec_cant_minima' => NULL,
      'selec_cant_maxima' => NULL,
      'selec_utilidades' => NULL,
      'selec_tamano' => NULL,
      'selec_ancho' => NULL,
      'selec_serializar' => NULL,
      'selec_cant_columnas' => NULL,
      'upload_extensiones' => NULL,
      'punto_montaje' => 12,
      'placeholder' => NULL,
      'carga_consulta_php_clase' => NULL,
      'carga_consulta_php_archivo' => NULL,
    ),
    2 => 
    array (
      'objeto_ei_formulario_fila' => 12000132,
      'objeto_ei_formulario' => 1510,
      'objeto_ei_formulario_proyecto' => 'toba_editor',
      'identificador' => 'punto_montaje',
      'elemento_formulario' => 'ef_combo',
      'columnas' => 'punto_montaje',
      'obligatorio' => 0,
      'oculto_relaja_obligatorio' => 0,
      'orden' => '4',
      'etiqueta' => 'Punto de Montaje',
      'etiqueta_estilo' => NULL,
      'descripcion' => NULL,
      'colapsado' => 0,
      'desactivado' => 0,
      'estilo' => NULL,
      'total' => NULL,
      'inicializacion' => NULL,
      'permitir_html' => 0,
      'deshabilitar_rest_func' => 0,
      'estado_defecto' => NULL,
      'solo_lectura' => 0,
      'solo_lectura_modificacion' => 0,
      'carga_metodo' => 'get_pms',
      'carga_clase' => NULL,
      'carga_include' => NULL,
      'carga_dt' => NULL,
      'carga_consulta_php' => 1,
      'carga_sql' => NULL,
      'carga_fuente' => 'instancia',
      'carga_lista' => NULL,
      'carga_col_clave' => 'id',
      'carga_col_desc' => 'etiqueta',
      'carga_maestros' => NULL,
      'carga_cascada_relaj' => 0,
      'cascada_mantiene_estado' => 0,
      'carga_permite_no_seteado' => 0,
      'carga_no_seteado' => NULL,
      'carga_no_seteado_ocultar' => 0,
      'edit_tamano' => NULL,
      'edit_maximo' => NULL,
      'edit_mascara' => NULL,
      'edit_unidad' => NULL,
      'edit_rango' => NULL,
      'edit_filas' => NULL,
      'edit_columnas' => NULL,
      'edit_wrap' => NULL,
      'edit_resaltar' => NULL,
      'edit_ajustable' => NULL,
      'edit_confirmar_clave' => NULL,
      'edit_expreg' => NULL,
      'popup_item' => NULL,
      'popup_proyecto' => NULL,
      'popup_editable' => NULL,
      'popup_ventana' => NULL,
      'popup_carga_desc_metodo' => NULL,
      'popup_carga_desc_clase' => NULL,
      'popup_carga_desc_include' => NULL,
      'popup_puede_borrar_estado' => NULL,
      'fieldset_fin' => NULL,
      'check_valor_si' => NULL,
      'check_valor_no' => NULL,
      'check_desc_si' => NULL,
      'check_desc_no' => NULL,
      'check_ml_toggle' => NULL,
      'fijo_sin_estado' => NULL,
      'editor_ancho' => NULL,
      'editor_alto' => NULL,
      'editor_botonera' => NULL,
      'editor_config_file' => NULL,
      'selec_cant_minima' => NULL,
      'selec_cant_maxima' => NULL,
      'selec_utilidades' => NULL,
      'selec_tamano' => NULL,
      'selec_ancho' => NULL,
      'selec_serializar' => NULL,
      'selec_cant_columnas' => NULL,
      'upload_extensiones' => NULL,
      'punto_montaje' => 12,
      'placeholder' => NULL,
      'carga_consulta_php_clase' => 'toba_info_editores',
      'carga_consulta_php_archivo' => 'modelo/info/toba_info_editores.php',
    ),
    3 => 
    array (
      'objeto_ei_formulario_fila' => 1175,
      'objeto_ei_formulario' => 1510,
      'objeto_ei_formulario_proyecto' => 'toba_editor',
      'identificador' => 'subclase_archivo',
      'elemento_formulario' => 'ef_popup',
      'columnas' => 'subclase_archivo',
      'obligatorio' => 0,
      'oculto_relaja_obligatorio' => 0,
      'orden' => '5',
      'etiqueta' => 'Subclase - Archivo',
      'etiqueta_estilo' => NULL,
      'descripcion' => 'Archivo PHP donde reside la subclase. Ver [wiki:Referencia/Objetos/Extension Extensi�n de un Objeto].',
      'colapsado' => 0,
      'desactivado' => 0,
      'estilo' => NULL,
      'total' => 0,
      'inicializacion' => NULL,
      'permitir_html' => 0,
      'deshabilitar_rest_func' => 0,
      'estado_defecto' => NULL,
      'solo_lectura' => 0,
      'solo_lectura_modificacion' => 0,
      'carga_metodo' => NULL,
      'carga_clase' => NULL,
      'carga_include' => NULL,
      'carga_dt' => NULL,
      'carga_consulta_php' => NULL,
      'carga_sql' => NULL,
      'carga_fuente' => NULL,
      'carga_lista' => NULL,
      'carga_col_clave' => NULL,
      'carga_col_desc' => NULL,
      'carga_maestros' => NULL,
      'carga_cascada_relaj' => NULL,
      'cascada_mantiene_estado' => 0,
      'carga_permite_no_seteado' => 0,
      'carga_no_seteado' => NULL,
      'carga_no_seteado_ocultar' => NULL,
      'edit_tamano' => 80,
      'edit_maximo' => NULL,
      'edit_mascara' => NULL,
      'edit_unidad' => NULL,
      'edit_rango' => NULL,
      'edit_filas' => NULL,
      'edit_columnas' => NULL,
      'edit_wrap' => NULL,
      'edit_resaltar' => NULL,
      'edit_ajustable' => NULL,
      'edit_confirmar_clave' => NULL,
      'edit_expreg' => NULL,
      'popup_item' => '1000257',
      'popup_proyecto' => 'toba_editor',
      'popup_editable' => 1,
      'popup_ventana' => 'width: 400,height: 400,scroll: yes',
      'popup_carga_desc_metodo' => NULL,
      'popup_carga_desc_clase' => NULL,
      'popup_carga_desc_include' => NULL,
      'popup_puede_borrar_estado' => 0,
      'fieldset_fin' => NULL,
      'check_valor_si' => NULL,
      'check_valor_no' => NULL,
      'check_desc_si' => NULL,
      'check_desc_no' => NULL,
      'check_ml_toggle' => NULL,
      'fijo_sin_estado' => NULL,
      'editor_ancho' => NULL,
      'editor_alto' => NULL,
      'editor_botonera' => NULL,
      'editor_config_file' => NULL,
      'selec_cant_minima' => NULL,
      'selec_cant_maxima' => NULL,
      'selec_utilidades' => NULL,
      'selec_tamano' => NULL,
      'selec_ancho' => NULL,
      'selec_serializar' => NULL,
      'selec_cant_columnas' => NULL,
      'upload_extensiones' => NULL,
      'punto_montaje' => 12,
      'placeholder' => NULL,
      'carga_consulta_php_clase' => NULL,
      'carga_consulta_php_archivo' => NULL,
    ),
    4 => 
    array (
      'objeto_ei_formulario_fila' => 1174,
      'objeto_ei_formulario' => 1510,
      'objeto_ei_formulario_proyecto' => 'toba_editor',
      'identificador' => 'subclase',
      'elemento_formulario' => 'ef_editable',
      'columnas' => 'subclase',
      'obligatorio' => 0,
      'oculto_relaja_obligatorio' => 0,
      'orden' => '6',
      'etiqueta' => 'Subclase',
      'etiqueta_estilo' => NULL,
      'descripcion' => 'Nombre optativo de la subclase. Esta tiene que heredar del elemento de la infraestructura seleccionado y utilizar las ventanas permitidas. Ver [wiki:Referencia/Objetos/Extension Extensi�n de un Objeto].',
      'colapsado' => 0,
      'desactivado' => 0,
      'estilo' => NULL,
      'total' => 0,
      'inicializacion' => NULL,
      'permitir_html' => 0,
      'deshabilitar_rest_func' => 0,
      'estado_defecto' => NULL,
      'solo_lectura' => 0,
      'solo_lectura_modificacion' => 0,
      'carga_metodo' => NULL,
      'carga_clase' => NULL,
      'carga_include' => NULL,
      'carga_dt' => NULL,
      'carga_consulta_php' => NULL,
      'carga_sql' => NULL,
      'carga_fuente' => NULL,
      'carga_lista' => NULL,
      'carga_col_clave' => NULL,
      'carga_col_desc' => NULL,
      'carga_maestros' => NULL,
      'carga_cascada_relaj' => NULL,
      'cascada_mantiene_estado' => 0,
      'carga_permite_no_seteado' => 0,
      'carga_no_seteado' => NULL,
      'carga_no_seteado_ocultar' => NULL,
      'edit_tamano' => 40,
      'edit_maximo' => NULL,
      'edit_mascara' => NULL,
      'edit_unidad' => NULL,
      'edit_rango' => NULL,
      'edit_filas' => NULL,
      'edit_columnas' => NULL,
      'edit_wrap' => NULL,
      'edit_resaltar' => NULL,
      'edit_ajustable' => NULL,
      'edit_confirmar_clave' => NULL,
      'edit_expreg' => '/^[a-zA-Z0-9_]+$/',
      'popup_item' => NULL,
      'popup_proyecto' => NULL,
      'popup_editable' => NULL,
      'popup_ventana' => NULL,
      'popup_carga_desc_metodo' => NULL,
      'popup_carga_desc_clase' => NULL,
      'popup_carga_desc_include' => NULL,
      'popup_puede_borrar_estado' => NULL,
      'fieldset_fin' => NULL,
      'check_valor_si' => NULL,
      'check_valor_no' => NULL,
      'check_desc_si' => NULL,
      'check_desc_no' => NULL,
      'check_ml_toggle' => NULL,
      'fijo_sin_estado' => NULL,
      'editor_ancho' => NULL,
      'editor_alto' => NULL,
      'editor_botonera' => NULL,
      'editor_config_file' => NULL,
      'selec_cant_minima' => NULL,
      'selec_cant_maxima' => NULL,
      'selec_utilidades' => NULL,
      'selec_tamano' => NULL,
      'selec_ancho' => NULL,
      'selec_serializar' => NULL,
      'selec_cant_columnas' => NULL,
      'upload_extensiones' => NULL,
      'punto_montaje' => 12,
      'placeholder' => NULL,
      'carga_consulta_php_clase' => NULL,
      'carga_consulta_php_archivo' => NULL,
    ),
    5 => 
    array (
      'objeto_ei_formulario_fila' => 5274,
      'objeto_ei_formulario' => 1510,
      'objeto_ei_formulario_proyecto' => 'toba_editor',
      'identificador' => 'identificador',
      'elemento_formulario' => 'ef_editable',
      'columnas' => 'identificador',
      'obligatorio' => 0,
      'oculto_relaja_obligatorio' => 0,
      'orden' => '7',
      'etiqueta' => 'Indice',
      'etiqueta_estilo' => NULL,
      'descripcion' => 'Este campo se utiliza para acceder en runtime a una referencia del componente a travez de un indice textual ( Utilizando el metodo toba::componente(\'INDICE\') )',
      'colapsado' => 0,
      'desactivado' => 0,
      'estilo' => NULL,
      'total' => NULL,
      'inicializacion' => NULL,
      'permitir_html' => 0,
      'deshabilitar_rest_func' => 0,
      'estado_defecto' => NULL,
      'solo_lectura' => 0,
      'solo_lectura_modificacion' => 0,
      'carga_metodo' => NULL,
      'carga_clase' => NULL,
      'carga_include' => NULL,
      'carga_dt' => NULL,
      'carga_consulta_php' => NULL,
      'carga_sql' => NULL,
      'carga_fuente' => NULL,
      'carga_lista' => NULL,
      'carga_col_clave' => NULL,
      'carga_col_desc' => NULL,
      'carga_maestros' => NULL,
      'carga_cascada_relaj' => NULL,
      'cascada_mantiene_estado' => 0,
      'carga_permite_no_seteado' => 0,
      'carga_no_seteado' => NULL,
      'carga_no_seteado_ocultar' => NULL,
      'edit_tamano' => 50,
      'edit_maximo' => NULL,
      'edit_mascara' => NULL,
      'edit_unidad' => NULL,
      'edit_rango' => NULL,
      'edit_filas' => NULL,
      'edit_columnas' => NULL,
      'edit_wrap' => NULL,
      'edit_resaltar' => NULL,
      'edit_ajustable' => NULL,
      'edit_confirmar_clave' => NULL,
      'edit_expreg' => '/^[a-zA-Z0-9_]+$/',
      'popup_item' => NULL,
      'popup_proyecto' => NULL,
      'popup_editable' => NULL,
      'popup_ventana' => NULL,
      'popup_carga_desc_metodo' => NULL,
      'popup_carga_desc_clase' => NULL,
      'popup_carga_desc_include' => NULL,
      'popup_puede_borrar_estado' => NULL,
      'fieldset_fin' => NULL,
      'check_valor_si' => NULL,
      'check_valor_no' => NULL,
      'check_desc_si' => NULL,
      'check_desc_no' => NULL,
      'check_ml_toggle' => NULL,
      'fijo_sin_estado' => NULL,
      'editor_ancho' => NULL,
      'editor_alto' => NULL,
      'editor_botonera' => NULL,
      'editor_config_file' => NULL,
      'selec_cant_minima' => NULL,
      'selec_cant_maxima' => NULL,
      'selec_utilidades' => NULL,
      'selec_tamano' => NULL,
      'selec_ancho' => NULL,
      'selec_serializar' => NULL,
      'selec_cant_columnas' => NULL,
      'upload_extensiones' => NULL,
      'punto_montaje' => 12,
      'placeholder' => NULL,
      'carga_consulta_php_clase' => NULL,
      'carga_consulta_php_archivo' => NULL,
    ),
    6 => 
    array (
      'objeto_ei_formulario_fila' => 1171,
      'objeto_ei_formulario' => 1510,
      'objeto_ei_formulario_proyecto' => 'toba_editor',
      'identificador' => 'descripcion',
      'elemento_formulario' => 'ef_editable_textarea',
      'columnas' => 'descripcion',
      'obligatorio' => 0,
      'oculto_relaja_obligatorio' => 0,
      'orden' => '8',
      'etiqueta' => 'Descripci�n',
      'etiqueta_estilo' => NULL,
      'descripcion' => 'Ayuda contextual que muestra el objeto, opcionalmente puede tener referencias a documentaci�n externa. Por ejemplo esta es una descripci�n con   esta [wiki:Referencia referencia] y esta [api:index referencia].',
      'colapsado' => NULL,
      'desactivado' => NULL,
      'estilo' => NULL,
      'total' => 0,
      'inicializacion' => NULL,
      'permitir_html' => NULL,
      'deshabilitar_rest_func' => NULL,
      'estado_defecto' => NULL,
      'solo_lectura' => NULL,
      'solo_lectura_modificacion' => 0,
      'carga_metodo' => NULL,
      'carga_clase' => NULL,
      'carga_include' => NULL,
      'carga_dt' => NULL,
      'carga_consulta_php' => NULL,
      'carga_sql' => NULL,
      'carga_fuente' => NULL,
      'carga_lista' => NULL,
      'carga_col_clave' => NULL,
      'carga_col_desc' => NULL,
      'carga_maestros' => NULL,
      'carga_cascada_relaj' => NULL,
      'cascada_mantiene_estado' => 0,
      'carga_permite_no_seteado' => 0,
      'carga_no_seteado' => NULL,
      'carga_no_seteado_ocultar' => NULL,
      'edit_tamano' => NULL,
      'edit_maximo' => NULL,
      'edit_mascara' => NULL,
      'edit_unidad' => NULL,
      'edit_rango' => NULL,
      'edit_filas' => NULL,
      'edit_columnas' => 50,
      'edit_wrap' => NULL,
      'edit_resaltar' => NULL,
      'edit_ajustable' => NULL,
      'edit_confirmar_clave' => NULL,
      'edit_expreg' => NULL,
      'popup_item' => NULL,
      'popup_proyecto' => NULL,
      'popup_editable' => NULL,
      'popup_ventana' => NULL,
      'popup_carga_desc_metodo' => NULL,
      'popup_carga_desc_clase' => NULL,
      'popup_carga_desc_include' => NULL,
      'popup_puede_borrar_estado' => NULL,
      'fieldset_fin' => NULL,
      'check_valor_si' => NULL,
      'check_valor_no' => NULL,
      'check_desc_si' => NULL,
      'check_desc_no' => NULL,
      'check_ml_toggle' => NULL,
      'fijo_sin_estado' => NULL,
      'editor_ancho' => NULL,
      'editor_alto' => NULL,
      'editor_botonera' => NULL,
      'editor_config_file' => NULL,
      'selec_cant_minima' => NULL,
      'selec_cant_maxima' => NULL,
      'selec_utilidades' => NULL,
      'selec_tamano' => NULL,
      'selec_ancho' => NULL,
      'selec_serializar' => NULL,
      'selec_cant_columnas' => NULL,
      'upload_extensiones' => NULL,
      'punto_montaje' => 12,
      'placeholder' => NULL,
      'carga_consulta_php_clase' => NULL,
      'carga_consulta_php_archivo' => NULL,
    ),
  ),
);
	}

}

?>