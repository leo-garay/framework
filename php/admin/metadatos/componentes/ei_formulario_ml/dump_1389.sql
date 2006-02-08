------------------------------------------------------------
--[1389]--  OBJETO - Editor FORM - EF (lista) 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1389', NULL, '1', 'toba', 'objeto_ei_formulario_ml', 'eiform_abm_detalle', 'admin/objetos_toba/eiform_abm_detalle.php', 'toba', NULL, 'OBJETO - Editor FORM - EF (lista)', NULL, NULL, 'En esta interface se editan las propiedades de los elementos de formulario.', 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo) VALUES ('toba', '65', '1389', 'modificacion', 'Modificacion', '1', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo) VALUES ('toba', '66', '1389', 'seleccion', NULL, '1', '1', '', NULL, 'apex', 'doc.gif', '0', 'Seleccionar la fila', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ut_formulario (objeto_ut_formulario_proyecto, objeto_ut_formulario, tabla, titulo, ev_agregar, ev_agregar_etiq, ev_mod_modificar, ev_mod_modificar_etiq, ev_mod_eliminar, ev_mod_eliminar_etiq, ev_mod_limpiar, ev_mod_limpiar_etiq, ev_mod_clave, clase_proyecto, clase, auto_reset, ancho, ancho_etiqueta, campo_bl, scroll, filas, filas_agregar, filas_agregar_online, filas_undo, filas_ordenar, columna_orden, filas_numerar, ev_seleccion, alto, analisis_cambios) VALUES ('toba', '1389', 'apex_objeto_ut_formulario_ef', 'Propiedades del Elemento', NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, '1', NULL, NULL, '1', '550', NULL, NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '1', '1', NULL, 'LINEA');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1389', '1249', 'elemento_formulario', 'ef_combo_db', 'elemento_formulario', NULL, 'sql: SELECT elemento_formulario, elemento_formulario, descripcion, parametros 
FROM apex_elemento_formulario
ORDER BY 2;', '4', 'Tipo de elemento', NULL, 'Tipo de elemento de formulario', NULL, NULL, '0', NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1389', '1250', 'etiqueta', 'ef_editable', 'etiqueta', NULL, 'tamano: 30;
maximo: 80;', '1', 'Etiqueta', NULL, 'Etiqueta para el formulario', NULL, NULL, '0', NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1389', '1251', 'identificador', 'ef_editable', 'identificador', '1', 'tamano: 20;
maximo: 20;', '0.75', 'Identificador', NULL, 'ID del EF', NULL, NULL, '0', NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1389', '1252', 'obligatorio', 'ef_checkbox', 'obligatorio', NULL, 'valor:1;
valor_info:SI;', '1.7', 'Oblig.', NULL, 'Indicar si el campo es obligatorio', NULL, NULL, '0', NULL);
