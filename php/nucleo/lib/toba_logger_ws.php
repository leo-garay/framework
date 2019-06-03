<?php
	
use Psr\Log\AbstractLogger;
use Psr\Log\LogLevel;
use Psr\Log\InvalidArgumentException;

use Monolog\Logger;
use Monolog\Handler\RotatingFileHandler;

/**
 * Mantiene una serie de sucesos generados durante un WS no visibles al usuario y los almacena para el posterior analisis
 * Los sucesos tienen una categoria (debug, info, error, etc.) y el proyecto que la produjo
 * 
 * @package Debug
 */	
class toba_logger_ws extends AbstractLogger
{	
	use \toba_basic_logger;
	
	private $nombre_archivo;
	private $hubo_encabezado = false;
	
	protected $archivo_log = 'web_services.log';
	protected $archivos_individuales = false;
	protected $mapeo_niveles = array();
	protected $id_solicitud;
	
	protected $modo_archivo = false;
	static protected $instancia;
			
	/**
	 * Este es un singleton por proyecto
	 * @return logger
	 */
	static function instancia($proyecto=null)
	{
		if (!isset(self::$instancia[$proyecto])) {
			self::$instancia[$proyecto] = new toba_logger_ws($proyecto);			
		}
		
		return self::$instancia[$proyecto];	
	}	
		
	public function __construct($proyecto)
	{
		$this->proyecto_actual = (isset($proyecto)) ? $proyecto : $this->get_proyecto_actual();
		$this->mapeo_niveles = array_flip($this->get_niveles());
		$this->id_solicitud = toba::solicitud()->get_id();
		
		//Instancio un handler monolog por defecto
		$this->set_logger_instance(new Logger($this->proyecto_actual));
		$this->get_logger_instance()->pushHandler(new ErrorLogHandler());
	}
			
	/**
	 * Funcion que permite asignar un recurso puntual al cual dirigir el log (stream write only)
	 * @param resource $log_handler
	 * @deprecated since version 3.2.3
	 * @see set_logger_instance
	 */
	public function set_log_handler($log_handler)
	{
		$this->stream_handler = $log_handler;
		$this->modo_archivo = false;
	}
	
	/**
	 * Permite redirigir el log desde el archivo web_services.log hacia stderr
	 * @param boolean $redirigir
	 * @deprecated since version 3.2.3
	 */
	public function redirect_to_stderr($redirigir)
	{
		if ($redirigir) {
			$this->get_logger_instance()->setHandlers([new ErrorLogHandler()]);
		} else {
			$actuales = $this->get_logger_instance()->getHandlers();
			for ($i = 0; $i < count($actuales); $i++) {
				if ($actuales[$i] instanceof Monolog\Handlers\ErrorLogHandler) {
					unset($actuales[$i]);
				}
			}
			$this->get_logger_instance()->setHandlers($actuales);
		}
		$this->modo_archivo = (! $redirigir);
	}
	
	public function log($level, $message, array $context = array())
	{
		if (! $this->activo) {			//Si no estoy logueando ni me gasto.
			return;
		}		
		$nivel_pedido = strtoupper($level);		
		// PSR-3 dice que el mensaje siempre debe ser un string
		$mensaje = (is_object($message)) ?  $message->__toString() : (string) $message;		
		/*if (strpos('{', $mensaje) !== false) {					//Habria que parsear para ver si no existe algun replace en base al contexto.
			//Hay que hacer el replace aca dentro del mensaje por ahora awanto
			
		}*/
		$this->get_logger_instance()->log(Logger::toMonologLevel($nivel_pedido), $message, $context);
		if (isset($this->mapeo_niveles[$nivel_pedido]) && $this->mapeo_niveles[$nivel_pedido] <= $this->nivel_maximo) {
			switch ($level) {
				case LogLevel::EMERGENCY:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_EMERGENCY);
					break;
				case LogLevel::ALERT:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_ALERT);
					break;
				case LogLevel::CRITICAL:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_CRITICAL);
					break;
				case LogLevel::ERROR:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_ERROR);
					break;
				case LogLevel::WARNING:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_WARNING);
					break;
				case LogLevel::NOTICE:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_NOTICE);
					break;
				case LogLevel::INFO:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_INFO);
					break;
				case LogLevel::DEBUG:
					$this->registrar_mensaje($mensaje, null, TOBA_LOG_DEBUG);
					break;
				default:
					// Unknown level --> PSR-3 says kaboom 
					throw new InvalidArgumentException("Severidad del msg desconocida"	);
			}		
		}
	}
	
	/**
	 * Guarda los sucesos actuales en el sist. de archivos
	 */
	public function guardar()
	{		
		if ($this->activo && $this->modo_archivo) {
			$this->guardar_en_archivo($this->get_nombre_archivo());
		}
	}
	
	/**
	 *  Permite disparar un guardado parcial de la informacion
	 */
	public function set_checkpoint()
	{
		$this->guardar();
	}
	
	/**
	 * Le dice al log que guarde un archivo por cada solicitud e ip 
	 * @param boolean $activo
	 */
	public function loguear_pedidos_separados($activo)
	{
		$this->archivos_individuales = $activo;
	}
	
	//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
	//							METODOS AUXILIARES
	//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------//		
	protected function instanciar_handler()
	{
	}
	
	protected function stream_log($mensaje, $nivel)
	{
	}
	
	protected function armar_mensaje($mensaje, $nivel)
	{
		return  "[" . $this->id_solicitud . "]" . $mensaje . PHP_EOL;
	}
	
	//------------------------------------------------------------------------------------------------------------------------------//
	//			METODOS PARA LOGUEO EN ARCHIVOS INDIVIDUALES
	//------------------------------------------------------------------------------------------------------------------------------//
	protected function armar_encabezado()
	{
		$salto = "\r\n";
		$texto = self::$separador.$salto;
		$texto .= "Fecha: ".date("d-m-Y H:i:s").$salto;
		if (class_exists('toba') && is_object(toba::solicitud())) {
			$texto .= "Operacion: ".toba::solicitud()->get_datos_item('item_nombre').$salto;
		}
		$usuario = self::get_usuario_actual();
		if (isset($usuario)) {
			$texto .= "Usuario: ".$usuario.$salto;
		}
		$texto .= "Version-PHP: ". phpversion().$salto;
		if (isset($_SERVER['SERVER_NAME'])) {
			$texto .= "Servidor: ".$_SERVER['SERVER_NAME'].$salto;
		}
		if (isset($_SERVER['REQUEST_URI'])) {
			$texto .= "URI: ".$_SERVER['REQUEST_URI'].$salto;	
		}
		$this->hubo_encabezado = true;		
		return $texto;
	}
		
	function guardar_en_archivo($archivo, $forzar_salida = false)
	{
		$salto = "\r\n";
		$texto = '';
		if (! $this->hubo_encabezado) {
			$texto .= $this->armar_encabezado();
			$texto .= self::$fin_encabezado.$salto;		
			$this->hubo_encabezado = true;
			$this->guardar_archivo_log($texto, $archivo);
		}
		$mensajes = $this->armar_mensajes();
		$hay_salida = (! empty($mensajes));
		if ($hay_salida || $forzar_salida) {
			foreach($mensajes as $indx => $msg) {
				$this->get_logger_instance()->log(Logger::toMonologLevel($this->ref_niveles[$this->niveles[$indx]]), $msg);
			}
		}
	}	
		
	protected function guardar_archivo_log($texto, $archivo)
	{
		$permisos = 0774;
		//--- Asegura que el path esta creado
		$path = $this->directorio_logs();
		$path_completo = $path ."/".$archivo;
		toba_manejador_archivos::crear_arbol_directorios($path, $permisos);

		$this->get_logger_instance()->pushHandler(new RotatingFileHandler($path_completo, 10, Logger::DEBUG,true, $permisos));
		$this->get_logger_instance()->log(Logger::DEBUG, $texto);
		
		//Reseteo las variables internas para no escribir lo mismo varias veces
		$this->proyectos = array(); 
		$this->mensajes = array();
		$this->niveles = array();
		$this->proximo = 0;
	}	
	
	protected function get_nombre_archivo()
	{
		if (! isset($this->nombre_archivo)) {
			if ($this->archivos_individuales) {
				$ip = isset($_SERVER["REMOTE_ADDR"]) ? $_SERVER["REMOTE_ADDR"]: 'sin_ip';
				$this->nombre_archivo = '/web_services/web_services_'. $ip. "_{$this->id_solicitud}.log";				//Agrego el dir final aca para mantener el viejo esquema
			} else {
				$this->nombre_archivo =  '/web_services/'. $this->archivo_log;
			}
		}		
		return $this->nombre_archivo;		
	}
	
	/*protected function reemplazar_contexto($mensaje, array $context = array())
	{
		$replace = array();
		foreach ($context as $key => $val) {
			if (!is_array($val) && (!is_object($val) || method_exists($val, '__toString'))) {
				$replace['{' . $key . '}'] = $val;
			}
		}
		return strtr($mensaje, $replace);
	}*/
}
?>
