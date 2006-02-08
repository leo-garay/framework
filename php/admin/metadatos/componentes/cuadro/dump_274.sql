------------------------------------------------------------
--[274]--  AUDITORIA - Solicitudes 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '274', NULL, NULL, 'toba', 'objeto_cuadro', NULL, NULL, NULL, NULL, 'AUDITORIA - Solicitudes', 'Solicitudes generadas', NULL, NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2004-04-14 16:00:26');
INSERT INTO apex_objeto_cuadro (objeto_cuadro_proyecto, objeto_cuadro, titulo, subtitulo, sql, columnas_clave, clave_dbr, archivos_callbacks, ancho, ordenar, paginar, tamano_pagina, tipo_paginado, eof_invisible, eof_customizado, exportar, exportar_rtf, pdf_propiedades, pdf_respetar_paginacion, asociacion_columnas, ev_seleccion, ev_eliminar, dao_nucleo_proyecto, dao_nucleo, dao_metodo, dao_parametros, desplegable, desplegable_activo, scroll, scroll_alto, cc_modo, cc_modo_anidado_colap, cc_modo_anidado_totcol, cc_modo_anidado_totcua) VALUES ('toba', '274', 'Solicitudes generadas', NULL, 'SELECT solicitud, solicitud_tipo, 
item_proyecto, item, 
momento, 
tiempo_respuesta
FROM apex_solicitud
%f% %w%
ORDER BY momento;', 'solicitud', NULL, NULL, '500', NULL, '1', '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '274', '1', 'ID', '0', NULL, NULL, NULL, NULL, 'solicitud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '274', '2', 'solicitud_tipo', '4', NULL, NULL, NULL, NULL, 'solicitud_tipo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '274', '3', 'Item (P)', '4', NULL, NULL, NULL, NULL, 'item_proyecto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '274', '4', 'Item', '4', NULL, NULL, NULL, NULL, 'item', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '274', '5', 'Momento', '4', NULL, NULL, NULL, NULL, 'momento', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_cuadro_columna (objeto_cuadro_proyecto, objeto_cuadro, orden, titulo, columna_estilo, columna_ancho, ancho_html, total, total_cc, valor_sql, valor_sql_formato, valor_fijo, valor_proceso, valor_proceso_esp, valor_proceso_parametros, vinculo_indice, par_dimension_proyecto, par_dimension, par_tabla, par_columna, no_ordenar, mostrar_xls, mostrar_pdf, pdf_propiedades, desabilitado) VALUES ('toba', '274', '6', 'Respuesta', '0', NULL, NULL, NULL, NULL, 'tiempo_respuesta', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
