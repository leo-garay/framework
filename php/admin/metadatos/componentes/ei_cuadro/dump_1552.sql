------------------------------------------------------------
--[1552]--  Casos de test utilizados 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1552', NULL, NULL, 'toba', 'objeto_ei_cuadro', NULL, NULL, NULL, NULL, 'Casos de test utilizados', 'Casos utilizados', '1', NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2005-09-06 13:12:40');
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo) VALUES ('toba', '99', '1552', 'abrir', 'Abrir', '1', '1', NULL, NULL, 'apex', 'reflexion/abrir.gif', '0', 'Abre el archivo del caso de test en el editor por defecto.', '1', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro (objeto_cuadro_proyecto, objeto_cuadro, titulo, subtitulo, sql, columnas_clave, clave_dbr, archivos_callbacks, ancho, ordenar, paginar, tamano_pagina, tipo_paginado, eof_invisible, eof_customizado, exportar, exportar_rtf, pdf_propiedades, pdf_respetar_paginacion, asociacion_columnas, ev_seleccion, ev_eliminar, dao_nucleo_proyecto, dao_nucleo, dao_metodo, dao_parametros, desplegable, desplegable_activo, scroll, scroll_alto, cc_modo, cc_modo_anidado_colap, cc_modo_anidado_totcol, cc_modo_anidado_totcua) VALUES ('toba', '1552', NULL, NULL, NULL, 'id', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc) VALUES ('toba', '1552', '341', 'id', '1', 'Id', NULL, '5', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ei_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, objeto_cuadro_col, clave, orden, titulo, estilo_titulo, estilo, ancho, formateo, vinculo_indice, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado, total, total_cc) VALUES ('toba', '1552', '342', 'nombre', '2', 'Nombre', 'lista-col-titulo', '4', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
