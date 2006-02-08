------------------------------------------------------------
--[1502]--  OBJETO - DEPENDENCIAS 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1502', NULL, NULL, 'toba', 'objeto_datos_tabla', NULL, NULL, NULL, NULL, 'OBJETO - DEPENDENCIAS', NULL, NULL, NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2005-08-19 17:26:21');
INSERT INTO apex_objeto_db_registros (objeto_proyecto, objeto, max_registros, min_registros, ap, ap_clase, ap_archivo, tabla, alias, modificar_claves) VALUES ('toba', '1502', NULL, NULL, '0', 'apdb_dependencias', 'admin/db/apdb_dependencias.php', 'apex_objeto_dependencias', NULL, '0');
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '48', 'proyecto', 'C', '1', NULL, '15', NULL, '1', NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '49', 'objeto_consumidor', 'E', '1', NULL, NULL, NULL, '1', NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '50', 'objeto_proveedor', 'E', NULL, NULL, NULL, NULL, '1', NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '51', 'identificador', 'C', NULL, NULL, '20', NULL, '1', NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '52', 'parametros_a', 'C', NULL, NULL, '255', NULL, NULL, NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '53', 'parametros_b', 'C', NULL, NULL, '255', NULL, NULL, NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '54', 'parametros_c', 'C', NULL, NULL, '255', NULL, NULL, NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '55', 'inicializar', 'E', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '101', 'clase', 'C', NULL, NULL, '40', NULL, NULL, '1');
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '102', 'nombre_objeto', 'C', NULL, NULL, '60', NULL, NULL, '1');
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '103', 'descripcion', 'C', NULL, NULL, '60', NULL, NULL, '1');
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '332', 'dep_id', 'E', '1', 'apex_objeto_dep_seq', NULL, NULL, '1', NULL);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa) VALUES ('toba', '1502', '376', 'orden', 'E', NULL, NULL, NULL, NULL, NULL, NULL);
