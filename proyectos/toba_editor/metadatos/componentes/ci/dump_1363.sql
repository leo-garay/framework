------------------------------------------------------------
--[1363]--  Editor OBJETO - ei_cuadro 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba_editor', '1363', NULL, NULL, 'toba', 'objeto_ci', 'ci_principal', 'objetos_toba/ei_cuadro/ci_principal.php', NULL, NULL, 'Editor OBJETO - ei_cuadro', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2005-07-18 18:20:03');
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, defecto, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param, accion_vinculo_target, accion_vinculo_celda) VALUES ('toba_editor', '45', '1363', 'eliminar', '&Eliminar', '0', '0', 'Este comando ELIMINARA el COMPONENTE y sus asociaciones con otros elementos del sistema. �Desea continuar?', NULL, 'apex', 'borrar.gif', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, defecto, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param, accion_vinculo_target, accion_vinculo_celda) VALUES ('toba_editor', '46', '1363', 'procesar', '&Guardar', '1', '0', NULL, NULL, 'apex', 'guardar.gif', '1', NULL, '2', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '32', '1363', '1355', 'base', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '33', '1363', '1616', 'columna_corte', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '34', '1363', '1362', 'columnas', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '35', '1363', '1632', 'columnas_importar', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '36', '1363', '1364', 'columnas_lista', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '37', '1363', '1613', 'cortes', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '38', '1363', '1531', 'datos', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '39', '1363', '1385', 'eventos', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '40', '1363', '1361', 'prop_basicas', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba_editor', '41', '1363', '1623', 'prop_cortes', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_mt_me (objeto_mt_me_proyecto, objeto_mt_me, ev_procesar_etiq, ev_cancelar_etiq, ancho, alto, posicion_botonera, tipo_navegacion, con_toc, incremental, debug_eventos, activacion_procesar, activacion_cancelar, ev_procesar, ev_cancelar, objetos, post_procesar, metodo_despachador, metodo_opciones) VALUES ('toba_editor', '1363', NULL, NULL, '600px', '500px', 'ambos', 'tab_h', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo) VALUES ('toba_editor', '1363', '362', '1', '1', 'Propiedades basicas', NULL, NULL, 'apex', 'objetos/cuadro_array.gif', 'base,prop_basicas', 'procesar,eliminar', NULL, NULL);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo) VALUES ('toba_editor', '1363', '363', '2', '2', 'Columnas', NULL, NULL, 'apex', 'objetos/columna.gif', 'columnas_lista,columnas,columna_corte,columnas_importar', 'eliminar,procesar', NULL, NULL);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo) VALUES ('toba_editor', '1363', '364', '3', '4', 'Eventos', NULL, NULL, 'apex', 'reflexion/evento.gif', 'eventos', 'procesar,eliminar', NULL, NULL);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo) VALUES ('toba_editor', '1363', '474', 'pant_cortes', '3', 'Cortes Control', 'Los [wiki:Referencia/Objetos/ei_cuadro#CortesdeControl Cortes de Control]  permiten agrupar las filas a partir de campos con valores comunes. Su finalidad es parcializar los datos para poder visualizarlos en un modo m�s comprensible.', NULL, 'apex', 'objetos/fila.gif', 'prop_cortes,cortes', 'eliminar,procesar', NULL, NULL);
