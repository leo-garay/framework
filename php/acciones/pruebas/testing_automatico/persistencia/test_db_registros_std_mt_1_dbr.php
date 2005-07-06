<?
require_once('nucleo/persistencia/db_registros_mt.php');

class test_db_registros_std_mt_1_dbr extends db_registros_mt
{
	function __construct($fuente=null, $max_registros=0, $min_registros=0)
	{
		$def = 	array(	
					array (
						'nombre' => 'test_maestro',
						'columna' => array( 
							array( 	'nombre'=>'id',
									'pk'=>1, 
									'no_nulo'=>1 ),
							array( 	'nombre'=>'nombre',
									'no_nulo'=>1 ),
							array( 'nombre'=>'descripcion' )
						)
					),
					array (
						'nombre' => 'test_detalle',
						'columna' => array( 
							array( 	'nombre'=>'id',
									'pk'=>1, 
								//	'alias'=>'pepe', 
									'no_nulo'=>1,
									'join'=>'id' ),
							array( 'nombre'=>'extra',
									'no_nulo'=>1 )
						)
					)
				);
		parent::__construct($def, $fuente, $max_registros, $min_registros);
	}	
	
	function cargar_datos_clave($id)
	{
		$where[] = "test_maestro.id = '$id'";
		$this->cargar_datos($where);
	}
}
?>