------------------------------------------------------------
--[/consola/sql_seq_gen]--  Generador de SQL administrativo (SECUENCIAS) 
------------------------------------------------------------
INSERT INTO apex_item (item_id, proyecto, item, padre_id, padre_proyecto, padre, carpeta, nivel_acceso, solicitud_tipo, pagina_tipo_proyecto, pagina_tipo, nombre, descripcion, actividad_buffer_proyecto, actividad_buffer, actividad_patron_proyecto, actividad_patron, actividad_accion, menu, orden, solicitud_registrar, solicitud_obs_tipo_proyecto, solicitud_obs_tipo, solicitud_observacion, solicitud_registrar_cron, prueba_directorios, zona_proyecto, zona, zona_orden, zona_listar, imagen_recurso_origen, imagen, parametro_a, parametro_b, parametro_c, publico, usuario, creacion) VALUES ('271', 'toba', '/consola/sql_seq_gen', '1', 'toba', '/consola', '0', '0', 'consola', 'toba', 'consumidor_html', 'Generador de SQL administrativo (SECUENCIAS)', NULL, 'toba', '0', 'toba', 'especifico', 'acciones/consola/sql_seq_gen.php', NULL, '350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2004-05-09 22:39:42');
INSERT INTO apex_item_info (item_id, item_proyecto, item, descripcion_breve, descripcion_larga) VALUES ('271', 'toba', '/consola/sql_seq_gen', 'Generacion de SQL Administrativo de SECUENCIAS
a partir de los metadatos existentes
en las tablas \"apex_mod_datos_*\"', '<para>-p <proyecto> -- Generar SQL para un proyecto</para>');
