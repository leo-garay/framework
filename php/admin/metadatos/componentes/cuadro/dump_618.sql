------------------------------------------------------------
--[618]--  TRABAJO - Notas grales. objetos 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '618', NULL, NULL, 'toba', 'objeto_cuadro', NULL, NULL, NULL, NULL, 'TRABAJO - Notas grales. objetos', 'Notas generales - Objetos', NULL, NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro (objeto_cuadro_proyecto, objeto_cuadro, titulo, subtitulo, sql, columnas_clave, clave_dbr, archivos_callbacks, ancho, ordenar, paginar, tamano_pagina, tipo_paginado, eof_invisible, eof_customizado, exportar, exportar_rtf, pdf_propiedades, pdf_respetar_paginacion, asociacion_columnas, ev_seleccion, ev_eliminar, dao_nucleo_proyecto, dao_nucleo, dao_metodo, dao_parametros, desplegable, desplegable_activo, scroll, scroll_alto, cc_modo, cc_modo_anidado_colap, cc_modo_anidado_totcol, cc_modo_anidado_totcua) VALUES ('toba', '618', NULL, NULL, 'SELECT 
objeto_nota,
nota_tipo,
objeto,
usuario_origen,
titulo,
creacion
FROM apex_objeto_nota', 'objeto_nota', NULL, NULL, '90%', '1', '1', '25', NULL, '1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '618', '0', 'Nota', '4', NULL, NULL, NULL, NULL, 'objeto_nota', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '618', '2', 'Tipo', '4', NULL, NULL, NULL, NULL, 'nota_tipo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '618', '3', 'Objeto', '4', NULL, NULL, NULL, NULL, 'objeto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '618', '4', 'Emisor', '4', NULL, NULL, NULL, NULL, 'usuario_origen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '618', '5', 'T�tulo', '4', NULL, NULL, NULL, NULL, 'titulo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '618', '6', 'Fecha', '4', NULL, NULL, NULL, NULL, 'creacion', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', NULL);
