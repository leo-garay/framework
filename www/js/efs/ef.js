
//--- Creacion dinamica del div de error
var html = "<img id='ef_warning' src='" + toba.imagen('error') + "' style='left: 0px;margin: 0px 0px 0px 0px; display:none; position: absolute;'>";
if (pagina_cargada) {
	document.body.innerHTML += html;
} else {
	document.write(html);
}

var apex_ef_no_seteado = 'nopar';
var apex_ef_total = 's';


/**
 * @class Clase base de los elementos de formulario. 
 * @constructor
 * @phpdoc Componentes/Efs/toba_ef toba_ef
 * @wiki Referencia/efs
 */
function ef(id_form, etiqueta, obligatorio, colapsable) {

	this._id = null;
	this._oculto = false;
	this._solo_lectura = false;
	this._id_form = id_form;
	this._id_form_orig = this._id_form;
	this._etiqueta = etiqueta;
	if (obligatorio) {
		this._obligatorio_orig = obligatorio[0];
		this._obligatorio = this._obligatorio_orig;
		this._obligatorio_relajado = obligatorio[1];
		this._obligatorio_oculto_relaj = obligatorio[2];
	}
	this._error = null;
	this._colapsable = colapsable;
}
ef.prototype.constructor = ef;

	/**
	 * Retorna el id de este elemento definido en el editor
	 * @type string
	 */
	ef.prototype.get_id = function() { 
		return this._id;	
	};
	
	/**
	 * Retorna el id de este elemento definido en el editor
	 * @type boolean
	 */	
	ef.prototype.tiene_estado = function() {
		return this.get_estado() !== '';	
	};
		
	/**
	 * Retorna el estado o valor actual del elemento. 
	 * Generalmente es el value del input HTML
	 * @type string
	 */		
	ef.prototype.get_estado = function() {
		return this.input().value;
	};
	
	/**
	 * Retorna el estado o valor actual del elemento en un formato legible al usuario
	 * @type string
	 */
	ef.prototype.get_estado_con_formato = function() {
		return this.get_estado();
	};	

	/**
	 * Formatea un valor segun el tipo de elemento y lo retorna
	 * @type string
	 */
	ef.prototype.formatear_valor = function (valor) {
		return valor;
	};
	
	/**
	 * Retorna verdadero si el elemento esta disponible para edicion por parte del usuario
	 * @type boolean
	 */		
	ef.prototype.activo = function() {
		return !(this.input().disabled);
	};
		
	/**
	 * Retorna el input HTML asociado a este elemento
	 * @type <a href=http://developer.mozilla.org/en/docs/DOM:element>element</a>
	 */			
	ef.prototype.input = function() {
		return document.getElementById(this._id_form);
	};
	
	/**
	 * Retorna el TAG HTML que contiene tanto la etiqueta como el elemento en el documento
	 * @type <a href=http://developer.mozilla.org/en/docs/DOM:element>element</a>	 
	 */
	ef.prototype.nodo = function() {
		return document.getElementById('nodo_' + this._id_form);			
	};	

	/**
	 * Retorna el TAG HTML que contiene al elemento en el documento 
	 * @type <a href=http://developer.mozilla.org/en/docs/DOM:element>element</a>	 
	 * @see #nodo 
	 */
	ef.prototype.get_contenedor = function() {
		var cont = document.getElementById('cont_' + this._id_form);		
		if (! cont) {
			var input = this.input();
			if (input) {
				return input.parentNode;
			}
		}
		return cont;
	};

	/**
	 * Retorna el tabIndex actual del elemento.
	 * Este n�mero es utilizado para ciclar por los distintos elementos usando la tecla TAB
	 * @type int
	 * @return string
	 */
	ef.prototype.get_tab_index = function () {
		return this.input().tabIndex;
	};

	/**
	 * Retorna la descripci�n del �ltimo error detectado por este ef
	 * @return string
	 */	
	ef.prototype.get_error = function() {
		return this._error;
	};

	//---Servicios de inicio y finalizaci�n
	
	/**
	 * @private
	 */
	ef.prototype.iniciar = function(id, controlador) {
		this._id = id;
		this._controlador = controlador;
	};

	/**
	 * Valida el estado actual del ef
	 * @type boolean
	 * @return Verdadero si el estado actual del ef es v�lido, falso en caso contrario
	 * @see #get_error Usar get_error para ver el mensaje de error en caso de no validar
	 */
	ef.prototype.validar = function () {
		//--- Siempre hay que llamar a este validar antes de ejecutar el validar de un hijo
		if (this._obligatorio_orig) {
			if (this._obligatorio_relajado) {
				this._obligatorio = this._controlador.cascadas_maestros_preparados(this._id);	
			}
			if (this._obligatorio_oculto_relaj) {
				//--- Relaja la validacion si es oculto o esta solo_lectura
				if (this._oculto || this._solo_lectura) {
					this._obligatorio = false;
				}
			}
		}
		return true;
	};	
	
	/**
	 * @private
	 */
	ef.prototype.submit = function () {
		var input = this.input();
		if (input && input.disabled) {
			input.disabled = false;
		}
	};		
	
	/**
	 * Invierte la expansi�n actual del elemento
	 * Si actualmente esta colapsado lo expande y viceversa
	 */
	ef.prototype.cambiar_expansion = function(expandir) {
		if (this._colapsable) {
			if (expandir) {
				this.nodo().style.display = '';
			} else {
				this.nodo().style.display = 'none';
			}
		}
	};
	
	/**
	 * Fuerza un mensaje particular de error al elemento.
	 * Generalmente se usa cuando se quiere ampliar la validaci�n predeterminada del formulario
	 */
	ef.prototype.set_error = function(error) {
		this._error = error;
	};
	
	/**
	 * Deja sin efecto la ultima validaci�n
	 */
	ef.prototype.resetear_error = function() {
		delete(this._error);
	};

	/**
	 * Intenta forzar el foco visual al elemento, esto generalmente pone el cursor y la atenci�n visual en el elemento
	 * @type boolean
	 * @return Verdadero si se pudo seleccionar/dar foco, falso en caso contrario
	 */
	ef.prototype.seleccionar = function () {
		try {
			this.input().focus();
			this.input().select();
			return true;
		} catch(e) {
			return false;
		}
	};

	/**
	 * Muestra un icono de error a la izquierda del elemento conteniendo un mensaje
	 * @param {String} texto Mensaje a mostrar
	 * @param {int} izq Opcional, cantidad de pixeles a izq. donde se ubica el icono
	 * @see #no_resaltar
	 */
	ef.prototype.resaltar = function(texto, izq) {
		var cont = this.get_contenedor();
		var warn = document.getElementById('ef_warning_' + this._id_form);
		if (! warn) {
			izq = (typeof izq == 'number') ? izq : 14;
			var clon = document.getElementById('ef_warning').cloneNode(true);
			clon.id = 'ef_warning_' + this._id_form;
			var pos = getElementPosition(cont);
			clon.style.left = (pos.left-izq) + 'px';
			clon.style.display = '';
			cont.insertBefore(clon, cont.firstChild);
			warn = document.getElementById('ef_warning_' + this._id_form);
		}
		warn.title = texto;
		window.status = texto;
	};
	
	/**
	 * Elimina el icono visual incluido por el metodo resaltar()
	 * @see #resaltar
	 */
	ef.prototype.no_resaltar = function() {
		var cont = this.get_contenedor();
		var warn = document.getElementById('ef_warning_' + this._id_form);
		if (warn) {
			elem = cont.removeChild(warn);
			delete(elem);
			window.status = '';
		}
	};

	/**
	 * Oculta temporalmente el elemento y su etiqueta
	 * @param {boolean} resetar Adem�s de ocultar el elemento borra su estado o valor actual, por defecto false
	 * @see #mostrar
	 */
	ef.prototype.ocultar = function(resetear) {
		if (typeof resetear == 'undefined') {
			resetear = false;
		}
		var nodo = this.nodo();
		if (! nodo) {
			nodo = this.input();	
		}		
		nodo.style.display = 'none';	
		this._oculto = true;
		if (resetear) {
			this.resetear_estado();
		}
	};
	
	/**
	 * Muestra el elemento previamente ocultado
	 * @param {boolean} resetar Adem�s de ocultar el elemento borra su estado o valor actual
	 * @see #ocultar
	 */
	ef.prototype.mostrar = function(mostrar, resetear) {
		if (typeof mostrar == 'undefined') {
			mostrar = true;
		}
		if (mostrar) {
			var nodo = this.nodo();
			if (! nodo) {
				nodo = this.input();	
			}
			nodo.style.display = '';	
			this._oculto = false;
		} else {
			this.ocultar(resetear);	
		}
	};

	/**
	 * Cambia la capacidad de edici�n sobre el elemento
	 * @param {boolean} solo_lectura Desactiva (true) o activa (false) el elemento
	 * @see #activar
	 * @see #desactivar
	 */
	ef.prototype.set_solo_lectura = function(solo_lectura) {
		this.input().disabled = (typeof solo_lectura == 'undefined' || solo_lectura);
		this._solo_lectura = this.input().disabled;
	};
	
	/**
	 * Impide que el usuario pueda modificar el estado del elemento
	 */
	ef.prototype.desactivar = function() {
		this.set_solo_lectura(true);
	};

	/**
	 * Permite que el usuario pueda modificar el estado del elemento
	 */
	ef.prototype.activar = function() {
		this.set_solo_lectura(false);
	};
	
	
	/**
	 * Cambia el tabIndex actual del elemento.
	 * Este n�mero es utilizado para ciclar por los distintos elementos usando la tecla TAB	 
	 * @param {int} tab_index Nuevo orden
	 */
	ef.prototype.set_tab_index = function(tab_index) {
		if (this.input()) {
			this.input().tabIndex = tab_index;
		}
	};
	
	/**
	 * Cambia el valor o estado actual del elemento
	 */
	ef.prototype.set_estado = function(nuevo) {
		this.input().value = nuevo;
		if (this.input().onchange) {
			this.input().onchange();
		}		
	};
	

	/**
	 * Agrega una funcion o callback que ser� invocada cuando el elemento cambie su estado
	 * @param {string} callback Codigo de la funcion a disparar
	 */
	ef.prototype.cuando_cambia_valor = function(callback) { 
		if (this.input()) {
			addEvent(this.input(), 'onchange', callback);
		}
	};

	/**
	 * Cuando el elemento es parte de un formulario_ml este m�todo permite cambiar la fila/linea a la que se referencia
	 *
	 * <br>Por ejemplo desde el formulario para modificar el contenido del ef 'nombre' de la 5ta fila seria:<br>
	 *    <pre>this.ef('nombre').ir_a_fila(5).set_estado('Nuevo nombre');</pre>
	 * @type ef
	 * @return Una referencia a este ef
	 * @see #sin_fila
	 */
	ef.prototype.ir_a_fila = function(fila) {
		this._id_form = this._id_form_orig + fila;
		return this;	
	};
	
	/**
	 * Cuando el elemento es parte de un formulario_ml este m�todo retorna la fila a la que actualmente se hace referencia
	 * @type int
	 * @see #ir_a_fila
	 */
	ef.prototype.get_fila_actual = function() {
		return this._id_form.substring(this._id_form_orig.length);
	};
	
	/**
	 * Cuando el elemento es parte de un formulario_ml este m�todo fuerza a que el elemento no referencie a ninguna fila particular
	 * @see #ir_a_fila
	 * @type ef
	 * @return Una referencia a este ef	 
	 */
	ef.prototype.sin_fila = function() {
		this._id_form = this._id_form_orig;
		return this;
	};	
	
	//---Relaci�n con el cascadas
	
	/**
	 * Borra el estado actual del elemento, el nuevo estado depende de cada ef, generalmente equivale a un string vacio
	 */
	ef.prototype.resetear_estado = function() {
		this.set_estado('');
	};
	
	/**
	 * Elimina las opciones seleccionables del elemento
	 * Solo se aplica si el elemento maneja una serie de opciones desde donde se elige su estado
	 */
	ef.prototype.borrar_opciones = function() {
		this.resetear_estado();
	};

	/**
	 * Cambia las opciones disponibles de selecci�n 
	 * Solo se aplica si el elemento maneja una serie de opciones desde donde se elige su estado
	 */
	ef.prototype.set_opciones = function(opciones) {
		this.set_estado(opciones);	
		this.activar();
		if (this.input().onblur) {
			this.input().onblur();
		}	
	};

	/**
	 * @deprecated Desde la version 1.0 usar get_estado()
	 * @see #get_estado
	 */
	ef.prototype.valor = function() {
		return this.get_estado();
	};

	/**
	 * @deprecated Desde la versi�n 1.0 usar set_estado()
	 * @see #set_estado
	 */
	ef.prototype.cambiar_valor = function(nuevo) {
		this.set_estado(nuevo);
	};
	
//--------------------------------------------------------------------------------
ef_fijo.prototype = new ef();
ef_fijo.prototype.constructor = ef_fijo;

	/**
	 * @class Elemento que contiene HTML est�tico
	 * @constructor
	 * @phpdoc Componentes/Efs/toba_ef_fijo toba_ef_fijo
	 */
	function ef_fijo(id_form, etiqueta, obligatorio, colapsado) {
		ef.prototype.constructor.call(this, id_form, etiqueta, obligatorio, colapsado);
	}

	/**
	 * Cambia el HTML contenido en este elemento
	 * @param {string} nuevo HTML a incluir
	 */
	ef_fijo.prototype.set_estado = function(nuevo) {
		this.input().innerHTML = nuevo;
	};	
	
	ef_fijo.prototype.get_estado = function() {
		return this.input().innerHTML;
	};		
	
toba.confirmar_inclusion('efs/ef');