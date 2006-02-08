------------------------------------------------------------
--[1535]--  OBJETO - EI filtro 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1535', NULL, NULL, 'toba', 'objeto_datos_relacion', NULL, NULL, NULL, NULL, 'OBJETO - EI filtro', NULL, NULL, NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2005-08-28 03:51:37');
INSERT INTO apex_objeto_datos_rel (proyecto, objeto, clave, ap, ap_clase, ap_archivo) VALUES ('toba', '1535', NULL, '2', NULL, NULL);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES ('toba', '1535', '12', 'base -> prop_basicas', 'toba', '1501', 'base', 'proyecto,objeto', 'toba', '1529', 'prop_basicas', 'objeto_ut_formulario_proyecto,objeto_ut_formulario', '0', '1');
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES ('toba', '1535', '13', 'base -> efs', 'toba', '1529', 'prop_basicas', 'objeto_ut_formulario_proyecto,objeto_ut_formulario', 'toba', '1530', 'efs', 'objeto_ei_formulario_proyecto,objeto_ei_formulario', '0', '2');
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES ('toba', '1535', '14', 'base -> eventos', 'toba', '1501', 'base', 'proyecto,objeto', 'toba', '1505', 'eventos', 'proyecto,objeto', '0', '3');
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba', '110', '1535', '1501', 'base', '1', '1', NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba', '111', '1535', '1530', 'efs', '1', '0', NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba', '112', '1535', '1505', 'eventos', '0', '0', NULL, NULL, NULL);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES ('toba', '113', '1535', '1529', 'prop_basicas', '1', '1', NULL, NULL, NULL);
