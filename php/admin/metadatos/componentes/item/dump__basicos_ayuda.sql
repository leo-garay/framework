------------------------------------------------------------
--[/basicos/ayuda]--  Ayuda correspondiente al �tem 
------------------------------------------------------------
INSERT INTO apex_item (item_id, proyecto, item, padre_id, padre_proyecto, padre, carpeta, nivel_acceso, solicitud_tipo, pagina_tipo_proyecto, pagina_tipo, nombre, descripcion, actividad_buffer_proyecto, actividad_buffer, actividad_patron_proyecto, actividad_patron, actividad_accion, menu, orden, solicitud_registrar, solicitud_obs_tipo_proyecto, solicitud_obs_tipo, solicitud_observacion, solicitud_registrar_cron, prueba_directorios, zona_proyecto, zona, zona_orden, zona_listar, imagen_recurso_origen, imagen, parametro_a, parametro_b, parametro_c, publico, usuario, creacion) VALUES ('441', 'toba', '/basicos/ayuda', '13', 'toba', '/basicos', '0', '0', 'browser', 'toba', 'popup', 'Ayuda correspondiente al �tem', NULL, 'toba', '0', 'toba', 'especifico', 'acciones/admin/items/muestra_info.php', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2004-08-06 16:31:03');
INSERT INTO apex_item_info (item_id, item_proyecto, item, descripcion_breve, descripcion_larga) VALUES (NULL, 'toba', '/basicos/ayuda', 'Visualizacion de ayuda de ITEMS', '<para>Este item permite visualizar la ayuda cargada para un item especifico</para>');
INSERT INTO apex_item_objeto (item_id, proyecto, item, objeto, orden, inicializar) VALUES ('441', 'toba', '/basicos/ayuda', '550', '0', NULL);
