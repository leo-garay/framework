------------------------------------------------------------
--[1706]--  Simulación - ei_cuadro 
------------------------------------------------------------
INSERT INTO apex_objeto (proyecto, objeto, anterior, reflexivo, clase_proyecto, clase, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion) VALUES ('toba', '1706', NULL, NULL, 'toba', 'objeto_ci', 'ci_instanciador_ei_cuadro', 'admin/instanciadores/ci_instanciador_ei_cuadro.php', NULL, NULL, 'Simulación - ei_cuadro', NULL, NULL, NULL, 'toba', 'instancia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2005-10-25 14:42:16');
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, display_datos_cargados, grupo) VALUES ('toba', '119', '1706', 'refrescar', '&Refrescar Simulación', '0', '0', NULL, NULL, 'apex', 'refrescar.gif', '1', 'Refresca la simulación', '1', NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_mt_me (objeto_mt_me_proyecto, objeto_mt_me, ev_procesar_etiq, ev_cancelar_etiq, ancho, alto, posicion_botonera, tipo_navegacion, con_toc, incremental, debug_eventos, activacion_procesar, activacion_cancelar, ev_procesar, ev_cancelar, objetos, post_procesar, metodo_despachador, metodo_opciones) VALUES ('toba', '1706', NULL, NULL, '98%', NULL, 'ambos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos) VALUES ('toba', '1706', '936', 'simulacion', '1', 'Simulación', NULL, NULL, NULL, NULL, NULL, 'refrescar');
