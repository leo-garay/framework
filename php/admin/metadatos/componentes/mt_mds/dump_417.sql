------------------------------------------------------------
--[417]--  Usuario 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '417', NULL, NULL, 'toba', 'objeto_mt_mds', 'objeto_mt_mds_usuario', 'acciones/admin/usuarios/usuario2_clases.php', NULL, NULL, 'Usuario', NULL, NULL, 'Mantenimiento de USUARIOS', 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2004-06-01 05:50:27');
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba', '1', '417', '414', 'detalle_1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba', '2', '417', '413', 'maestro', NULL, NULL, NULL, NULL, NULL);
