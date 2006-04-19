------------------------------------------------------------
--[1631]--  OBJETO - Editor FORM - EF (importar) 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1631', NULL, NULL, 'toba', 'objeto_ei_formulario', NULL, NULL, NULL, NULL, 'OBJETO - Editor FORM - EF (importar)', 'Importar DEFINICION', '1', 'Importar la definicion del formulario de un OBJETO_DATOS_TABLA', 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2005-10-04 15:39:03');
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '111', '1631', 'importar', 'Importar', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ut_formulario (objeto_ut_formulario_proyecto, objeto_ut_formulario, tabla, titulo, ev_agregar, ev_agregar_etiq, ev_mod_modificar, ev_mod_modificar_etiq, ev_mod_eliminar, ev_mod_eliminar_etiq, ev_mod_limpiar, ev_mod_limpiar_etiq, ev_mod_clave, clase_proyecto, clase, auto_reset, ancho, ancho_etiqueta, campo_bl, scroll, filas, filas_agregar, filas_agregar_online, filas_undo, filas_ordenar, columna_orden, filas_numerar, ev_seleccion, alto, analisis_cambios) VALUES ('toba', '1631', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1631', '4238', 'datos_tabla', 'ef_combo_dao', 'datos_tabla', NULL, 'dao: get_lista_objetos_dt;
clase: dao_editores;
include: admin/db/dao_editores.php;
clave: objeto;
valor: descripcion;
no_seteado: --- SELECCIONAR ---;', '1', 'Datos Tabla', NULL, 'Seleccionar el objeto_datos_tabla que se desea utilizar.', NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1631', '4239', 'pk', 'ef_checkbox', 'pk', NULL, 'valor: 1;
valor_no_seteado: 0;', '2', 'Incluir PKs', NULL, 'Indica si se incluyen las PKs en el formulario', NULL, NULL, NULL, '0');
