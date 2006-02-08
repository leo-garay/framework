------------------------------------------------------------
--[707]--  Prueba 1 - Planificar 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '707', NULL, NULL, 'toba', 'objeto_ei_formulario_ml', 'objeto_ei_formulario_ml_p1b', 'acciones/pruebas/capas/prueba_1_interface.php', NULL, NULL, 'Prueba 1 - Planificar', 'Planificar', NULL, NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2004-11-11 16:13:53');
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo) VALUES ('toba', '21', '707', 'modificacion', 'Modificacion', '1', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO apex_objeto_ut_formulario (objeto_ut_formulario_proyecto, objeto_ut_formulario, tabla, titulo, ev_agregar, ev_agregar_etiq, ev_mod_modificar, ev_mod_modificar_etiq, ev_mod_eliminar, ev_mod_eliminar_etiq, ev_mod_limpiar, ev_mod_limpiar_etiq, ev_mod_clave, clase_proyecto, clase, auto_reset, ancho, ancho_etiqueta, campo_bl, scroll, filas, filas_agregar, filas_agregar_online, filas_undo, filas_ordenar, columna_orden, filas_numerar, ev_seleccion, alto, analisis_cambios) VALUES ('toba', '707', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, '1', '4', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '707', '1153', 'extra', 'ef_editable', 'extra', NULL, 'tamano: 60;', '3', 'Extra', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '707', '1154', 'forma', 'ef_editable', 'forma', NULL, 'tamano: 30;
solo_lectura: 1;', '0', 'Forma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '707', '1155', 'valor', 'ef_editable_numero', 'valor', NULL, 'cifras: 10;', '1', 'Valor', NULL, NULL, NULL, NULL, NULL, '1');
