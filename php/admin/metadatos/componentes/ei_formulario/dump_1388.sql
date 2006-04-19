------------------------------------------------------------
--[1388]--  OBJETO - Editor FORM ML - Prop. basicas 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1388', NULL, '1', 'toba', 'objeto_ei_formulario', 'form_prop_basicas', 'admin/objetos_toba/ei_formulario_ml/form_prop_basicas.php', 'toba', NULL, 'OBJETO - Editor FORM ML - Prop. basicas', NULL, NULL, 'En esta interface se definen las caracteristicas centrales del ABM', 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param) VALUES ('toba', '64', '1388', 'modificacion', 'Modificacion', '1', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ut_formulario (objeto_ut_formulario_proyecto, objeto_ut_formulario, tabla, titulo, ev_agregar, ev_agregar_etiq, ev_mod_modificar, ev_mod_modificar_etiq, ev_mod_eliminar, ev_mod_eliminar_etiq, ev_mod_limpiar, ev_mod_limpiar_etiq, ev_mod_clave, clase_proyecto, clase, auto_reset, ancho, ancho_etiqueta, campo_bl, scroll, filas, filas_agregar, filas_agregar_online, filas_undo, filas_ordenar, columna_orden, filas_numerar, ev_seleccion, alto, analisis_cambios) VALUES ('toba', '1388', 'apex_objeto_ut_formulario', 'Propiedades UT Formulario', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150px', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1239', 'alto', 'ef_editable', 'alto', NULL, 'tamano: 10;', '10', 'SCROLL - Alto', NULL, 'Alto de la zona de SCROLL', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1240', 'analisis_cambios', 'ef_combo_lista_c', 'analisis_cambios', NULL, 'lista: NO,Sin an�lisis/LINEA, En l�nea con los registros/EVENTOS, Lanzados como eventos;', '11', 'An�lisis de cambios', NULL, 'El formulario puede analizar los cambios realizado por el cliente y notificarlos.

En la notificaci�n en l�nea, a los datos enviados en el evento modifcaci�n se incluye un id interno como llave asociativo de los registros, y en cada uno de ellos se agrega una columna indicando el tipo de cambio (A, B o M), la columna se accede como $registro[apex_ei_analisis_fila].

En la notificaci�n por eventos, se lanzan los eventos registro_alta, registro_modificacion o registro_baja con el id y los datos de cada registro como par�metros.', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1241', 'ancho', 'ef_editable', 'ancho', NULL, 'tamano: 10;', '1', 'Ancho', NULL, 'Ancho de la tabla', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1243', 'filas', 'ef_editable_numero', 'filas', NULL, 'cifras: 3;', '2', 'Lineas', NULL, 'Cantidad de lineas a presentar. Si es 0 toma la cantidad de lineas fijas pasadas en el cargar datos.', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1244', 'filas_agregar', 'ef_checkbox', 'filas_agregar', NULL, 'valor: 1;
valor_info: SI;', '3', 'Agregar/Quitar lineas', NULL, 'Indica si la interface permite agregar y quitar m�s lineas. Tambi�n se va a permitir deshacer estas operaciones.', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1245', 'filas_numerar', 'ef_checkbox', 'filas_numerar', NULL, 'valor:1;', '8', 'Numerar filas', NULL, 'Numera las filas din�micamente.', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1246', 'filas_ordenar', 'ef_checkbox', 'filas_ordenar', NULL, 'valor: 1;', '6', 'Permite Ordenar', NULL, 'Indica si la interfaz permite subi y bajar las posiciones de las distintas l�neas.', NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1247', 'filas_undo', 'ef_checkbox', 'filas_undo', NULL, 'valor:1;', '4', 'Deshacer', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1248', 'scroll', 'ef_checkbox', 'scroll', NULL, 'valor: 1;
valor_info: SI;', '9', 'SCROLL', NULL, 'El formulario tiene SCROLL?', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1440', 'columna_orden', 'ef_editable', 'columna_orden', NULL, '', '7', 'Ordenar en columna', NULL, 'Tanto en la carga como en la modificacion se puede emplear una columna extra en los datos de la cual se cargan y notifica el orden num�rico de cada registro. Si no se utiliza columna el orden en que se envien y reciben los datos es el orden definitivo.', NULL, NULL, NULL, '0');
INSERT INTO apex_objeto_ei_formulario_ef (objeto_ei_formulario_proyecto, objeto_ei_formulario, objeto_ei_formulario_fila, identificador, elemento_formulario, columnas, obligatorio, inicializacion, orden, etiqueta, etiqueta_estilo, descripcion, colapsado, desactivado, estilo, total) VALUES ('toba', '1388', '1538', 'filas_agregar_online', 'ef_checkbox', 'filas_agregar_online', NULL, 'valor: 1;
valor_no_seteado: 0;
estado: 1;', '5', 'Agregado en l�nea', NULL, 'Si es online, la operaci�n se hace en el cliente (usando javascript), sino se lanza al server como un evento.', NULL, NULL, NULL, NULL);
