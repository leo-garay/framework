------------------------------------------------------------
--[1000004]--  Cat�logo Objetos - Opciones 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('admin', '1000004', NULL, NULL, 'toba', 'objeto_ei_filtro', NULL, NULL, NULL, NULL, 'Cat�logo Objetos - Opciones', 'Opciones', '1', NULL, 'admin', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2006-04-03 08:47:25');
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param, accion_vinculo_target, accion_vinculo_celda) VALUES ('admin', '1000009', '1000004', 'filtrar', '&Filtrar', '1', NULL, NULL, 'abm-input-eliminar', NULL, NULL, '1', NULL, '1', NULL, '0', NULL, 'cargado,no_cargado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param, accion_vinculo_target, accion_vinculo_celda) VALUES ('admin', '1000010', '1000004', 'cancelar', 'Ca&ncelar', '0', NULL, NULL, 'abm-input', NULL, NULL, '1', NULL, '2', NULL, '0', NULL, 'cargado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ut_formulario (objeto_ut_formulario_proyecto, objeto_ut_formulario, tabla, titulo, ev_agregar, ev_agregar_etiq, ev_mod_modificar, ev_mod_modificar_etiq, ev_mod_eliminar, ev_mod_eliminar_etiq, ev_mod_limpiar, ev_mod_limpiar_etiq, ev_mod_clave, clase_proyecto, clase, auto_reset, ancho, ancho_etiqueta, campo_bl, scroll, filas, filas_agregar, filas_agregar_online, filas_undo, filas_ordenar, columna_orden, filas_numerar, ev_seleccion, alto, analisis_cambios) VALUES ('admin', '1000004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100%', '150px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('admin', '1000004', '1000003', 'id', 'ef_editable_numero', 'id', NULL, 'tamano_:_ 10_;_
', '1', 'Identificador', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('admin', '1000004', '1000004', 'clase', 'ef_combo', 'clase', NULL, 'dao_:_ get_clases_editores_;_
clase_:_ dao_editores_;_
include_:_ modelo/consultas/dao_editores.php_;_
clave_:_ clase_;_
valor_:_ clase_;_
no_seteado_:_ --- Todas ---_;_
', '3', 'Tipo de Objeto', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('admin', '1000004', '1000006', 'extendidos', 'ef_combo', 'extendidos', NULL, 'no_seteado_:_ --- Todos ---_;_
lista_:_ SI,NO_;_
', '4', 'Con Subclase', NULL, 'Un objeto est� extendido si se defini� una [wiki:Referencia/Objetos/Extension subclase PHP] para el mismo.', NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('admin', '1000004', '1000007', 'nombre', 'ef_editable', 'nombre', NULL, 'tamano_:_ 25_;_
maximo_:_ 80_;_
', '2', 'Nombre', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('admin', '1000004', '1000012', 'dao', 'ef_editable', 'dao', NULL, 'tamano_:_ 25_;_
maximo_:_ 100_;_
', '5', 'Consulta PHP', NULL, 'Busca aquellos objetos que utilizen m�todos de consulta php (antes llamadas DAO) para obtener sus datos. Se puede especificar parte de su clase, metodo o archivo en donde se encuentra la consulta.', NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('admin', '1000004', '1000013', 'tabla', 'ef_editable', 'tabla', NULL, 'tamano_:_ 25_;_
maximo_:_ 255_;_
', '6', 'Tabla', NULL, 'Filtra aquellos objetos que utilizan en forma directa la tabla especificada.', NULL, NULL, NULL, '0');
