------------------------------------------------------------
--[1366]--  OBJETO - General - Eventos 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1366', NULL, NULL, 'toba', 'objeto_ei_formulario', 'eiform_eventos', 'admin/objetos_toba/eiform_eventos.php', NULL, NULL, 'OBJETO - General - Eventos', NULL, NULL, NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '52', '1366', 'aceptar', '&Aceptar', '1', '0', NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '51', '1366', 'cancelar', '&Cancelar', '0', '0', '', 'abm-input', NULL, NULL, '1', '', '2', NULL, '0', NULL, 'cargado', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '163', '1366', 'modificacion', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, '3', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ut_formulario (objeto_ut_formulario_proyecto, objeto_ut_formulario, tabla, titulo, ev_agregar, ev_agregar_etiq, ev_mod_modificar, ev_mod_modificar_etiq, ev_mod_eliminar, ev_mod_eliminar_etiq, ev_mod_limpiar, ev_mod_limpiar_etiq, ev_mod_clave, clase_proyecto, clase, auto_reset, ancho, ancho_etiqueta, campo_bl, scroll, filas, filas_agregar, filas_agregar_online, filas_undo, filas_ordenar, columna_orden, filas_numerar, ev_seleccion, alto, analisis_cambios) VALUES ('toba', '1366', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '500', '150px', NULL, NULL, NULL, '1', '1', NULL, '1', NULL, '1', '1', NULL, 'NO');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '1228', 'ayuda', 'ef_editable_multilinea', 'ayuda', NULL, 'filas: 4;
columnas: 60;', '3', 'Ayuda', NULL, 'Texto orientativo a mostrar cuando se posiciona el mouse sobre el elemento grafico que dispara el evento.', NULL, NULL, '4', '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '1229', 'confirmacion', 'ef_editable_multilinea', 'confirmacion', NULL, 'filas: 4;
columnas: 60;', '2', 'Confirmacion', NULL, 'Texto de confirmacion a mostrar antes de disparar el evento.', NULL, NULL, '4', '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '1230', 'estilo', 'ef_editable', 'estilo', NULL, 'tamano: 40;', '1', 'Estilo', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '1532', 'sobre_fila', 'ef_checkbox', 'sobre_fila', NULL, 'valor: 1;
valor_no_seteado: 0;', '4', 'A nivel de fila', NULL, 'Para aquellos objetos que manejan filas, el evento se incluye en cada una de estas.', NULL, '1', NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '1539', 'maneja_datos', 'ef_checkbox', 'maneja_datos', NULL, 'valor: 1;
valor_no_seteado: 0;
estado: 1;', '5', 'Maneja datos', NULL, 'Si un evento maneja datos realiza validaciones de lo editado y generalmente acarrea estos datos como parametros del evento. En el caso de un CI, implica que no se va a procesar ningun EI que esta dentro del mismo.', NULL, '1', NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '4366', 'grupo', 'ef_editable', 'grupo', NULL, 'tamano: 40;
maximo: 80;', '6', 'Grupos', NULL, 'Este identificador permite catalogar los eventos en grupos. Hay que ingresar la lista de grupos a los que el evento pertenece seperados por comas. Existen primitivas en los EI que permiten definir que grupo mostrar.', NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '4578', 'accion', 'ef_combo_lista_c', 'accion', NULL, 'no_seteado: Ninguna;
lista: V,Vinculo;', '7', 'Accion predefinida', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '4579', 'accion_imphtml_debug', 'ef_checkbox', 'accion_imphtml_debug', NULL, 'valor: 1;
valor_no_seteado: 0;', '8', 'Vista Previa', NULL, NULL, NULL, '1', NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '5000001', 'accion_vin_carpeta', 'ef_combo_dao', 'accion_vinculo_carpeta', NULL, 'dao: get_carpetas_posibles;
clase: dao_editores;
include: admin/db/dao_editores.php;
clave: id;
valor: nombre;
no_seteado: -- SELECCIONAR --;', '9', 'Vinculo - Carpeta', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '5000002', 'accion_vin_item', 'ef_combo_dao', 'accion_vinculo_item', NULL, 'dao: get_items_carpeta;
clase: dao_editores;
include: admin/db/dao_editores.php;
clave: id;
valor: descripcion;
no_seteado: -- SELECCIONAR --;
dependencias: accion_vin_carpeta;', '10', 'Vinculo - Item', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '5000003', 'accion_vin_popup', 'ef_checkbox', 'accion_vinculo_popup', NULL, 'valor: 1;
valor_no_seteado: 0;', '11', 'Vinculo - Es popup', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1366', '5000004', 'accion_vin_popup_par', 'ef_editable', 'accion_vinculo_popup_param', NULL, 'tamano: 60;', '12', 'Vinculo - Popup param.', NULL, 'width: 400px, height: 500px, scrollbars: 1, resizable: 1', NULL, NULL, NULL, '0');
