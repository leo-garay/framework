------------------------------------------------------------
--[1358]--  OBJETO - General - Dependencias 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1358', NULL, '0', 'toba', 'objeto_ei_formulario', NULL, NULL, 'toba', NULL, 'OBJETO - General - Dependencias', 'Objeto Asociado', NULL, 'Asocia objetos a items', 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '36', '1358', 'alta', '&Agregar', '1', '0', '', 'abm-input', NULL, NULL, '1', '', '1', NULL, NULL, NULL, 'no_cargado', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '37', '1358', 'baja', '&Eliminar', '0', '0', '�Desea ELIMINAR el registro?', 'abm-input', 'apex', 'borrar.gif', '1', '', '2', NULL, NULL, NULL, 'cargado', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '38', '1358', 'modificacion', '&Modificar', '1', '0', '', 'abm-input', NULL, NULL, '1', '', '3', NULL, NULL, NULL, 'cargado', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '39', '1358', 'cancelar', '&Cancelar', '0', '0', '', 'abm-input', NULL, NULL, '1', '', '4', NULL, NULL, NULL, 'cargado', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ut_formulario (objeto_ut_formulario_proyecto, objeto_ut_formulario, tabla, titulo, ev_agregar, ev_agregar_etiq, ev_mod_modificar, ev_mod_modificar_etiq, ev_mod_eliminar, ev_mod_eliminar_etiq, ev_mod_limpiar, ev_mod_limpiar_etiq, ev_mod_clave, clase_proyecto, clase, auto_reset, ancho, ancho_etiqueta, campo_bl, scroll, filas, filas_agregar, filas_agregar_online, filas_undo, filas_ordenar, columna_orden, filas_numerar, ev_seleccion, alto, analisis_cambios) VALUES ('toba', '1358', 'apex_objeto_dependencias', 'Objeto Asociado', NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, '1', NULL, NULL, '1', '500', NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, '1', '1', NULL, 'LINEA');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1358', '1189', 'dependencia', 'ef_combo_dao', 'proyecto, objeto_proveedor', '1', 'dao: get_lista_objetos_toba;
clase: dao_editores;
include: admin/db/dao_editores.php;
clave: proyecto, objeto;
valor: descripcion;
no_seteado: --- SELECCIONAR ---;
dependencias: dependencia_clase;', '3', 'Objeto', NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1358', '1190', 'dependencia_clase', 'ef_combo_dao', 'clase', '1', 'dao: get_lista_clases_toba;
clase: dao_editores;
include: admin/db/dao_editores.php;
clave: clase;
valor: descripcion;
no_seteado: --- SELECCIONAR ---;', '2', 'Clase', NULL, NULL, NULL, NULL, '4', '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1358', '1191', 'identificador', 'ef_editable', 'identificador', '1', 'tamano: 20;', '1', 'Rol', NULL, NULL, NULL, NULL, '0', '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1358', '1192', 'parametros_a', 'ef_editable', 'parametros_a', NULL, 'tamano: 40;
maximo: 80;', '4', 'Parametro A', NULL, NULL, NULL, '1', '0', NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1358', '1193', 'parametros_b', 'ef_editable', 'parametros_b', NULL, 'tamano: 40;
maximo: 80;', '5', 'Parametro B', NULL, NULL, NULL, '1', '0', NULL);
