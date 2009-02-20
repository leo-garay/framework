ef_combo_editable.prototype = new ef();
ef_combo_editable.prototype.constructor = ef_combo_editable;
	
/**
 * @class Combo editable equivalente a un tag SELECT en HTML 
 * @constructor
 * @phpdoc Componentes/Efs/toba_ef_combo_editable toba_ef_combo_editable
 */
 
function ef_combo_editable(id_form, etiqueta, obligatorio, colapsado, tamano) {
	ef.prototype.constructor.call(this, id_form, etiqueta, obligatorio, colapsado);
	this._tamano = tamano;
	this._es_oculto = false;
	this._buscar_todo = false;
	this._cascadas_ajax = false;	//El esquema de casacadas se maneja de forma particular
}

	/**
	 * Como el ml multiplexa los efs, necesita tener una referencia al objeto combo original, se mantiene una variable global con el objeto
	 */
	ef_combo_editable.prototype._get_combo = function() {
		return window['combo_editable_'+this._id_form];
	};
	
	//---Comandos

	ef_combo_editable.prototype.iniciar = function(id, contenedor) { 
		ef.prototype.iniciar.call(this, id, contenedor);
		var solo_lectura = document.getElementById(this._id_form).disabled;
		//Crea el combo_editable
		var combo = dhtmlXComboFromSelect(this._id_form, this._tamano);
		window['combo_editable_'+this._id_form] = combo;
		combo.enableFilteringMode(true);
		
		//Se utiliza al contenedor para que retorne una referencia estatica al ef, para el caso del ml que multiplexa el objeto por las filas
		var callback = contenedor.instancia_ef(this) + '.proceso_tecla()';
		var e = addEvent(this.input(), 'ontecla', callback); 
		combo.attachEvent('onKeyPressed', e);

		//Caso solo_lectura de las cascadas
		if (solo_lectura) {
			this.set_solo_lectura();
		}
	};	
	

	
	ef_combo_editable.prototype.cuando_cambia_valor = function(callback) {
		var e = addEvent(this.input(), 'oncambio', callback);
		this._get_combo().attachEvent('onChange', e);	
	};	

	ef_combo_editable.prototype._recargar_opciones = function() {
		clearTimeout(this._timer);
		if (this._es_oculto) {return;}
		sel_txt = this._get_combo().getSelectedText();
		srch_txt = this._get_combo().getComboText();
		if ((sel_txt == srch_txt && trim(srch_txt) != '') || ((trim(srch_txt) == '') && (! this._buscar_todo))) {
			return;
		}
		//Esto es para que traiga todo hasta el limite impuesto
		if (this._buscar_todo && srch_txt == '') {srch_txt = '%';this._buscar_todo = false;}
		var parametros = [srch_txt];
		this._controlador.filtrado_ef_ce_comunicar(this._id, parametros);
	};

	ef_combo_editable.prototype._setear_opcion = function(valor, msg) {
		if (typeof valor == 'undefined' || valor == '') {
			return false;
		}
		if (typeof msg == 'undefined') {
			msg = false;
		}
		var parametros = [valor];
		var resp = this._controlador.filtrado_ef_ce_validar(this._id, parametros);
		
		var combo = this._get_combo();
		combo.render(false);
		indice = combo.getIndexByValue(valor);
		if (indice >= 0 ) {
			combo.selectOption(indice,true,true);
			combo.closeAll();
		} 
		combo.render(true);
		return;
	};
	
	//---Proceso tecla para filtrar
	ef_combo_editable.prototype.proceso_tecla = function() {
		//window['combo_editable_'+this._id_form];
		var combo = this._get_combo();
		//Reemplazo caracteres no v�lidos
		srch_txt_old = combo.getComboText();
		//Si es '*' busco todo
		this._buscar_todo = (srch_txt_old == '*');
		srch_txt = srch_txt_old.replace(/[*\]\[?\\+\(\)\/\}\{\"-\']/gi, '');
		if (srch_txt != srch_txt_old) {	
			combo.setComboText(srch_txt);		
		} 
		if (srch_txt == srch_txt_old || this._buscar_todo) {
			clearTimeout(this._timer);
			this._timer = setTimeout(this._bind(this._recargar_opciones), 400);
		}
		return;
	};
	
	//---Consultas		
	
	/**
	 * Tiene algun elemento seleccionado? (distinto del no_seteado)
	 * @type boolean
	 */
	ef_combo_editable.prototype.tiene_estado = function() {
		var valor = this.get_estado();
		
		return valor !== '' &&  valor != apex_ef_no_seteado;	
	};
	
	ef_combo_editable.prototype.get_estado = function(descr) {
		if (typeof descr == 'undefined') {
				descr = false;
			}	
		var combo = this._get_combo();
		var valor = combo.getSelectedValue();
		var desc = combo.getSelectedText();
		var indice = combo.getIndexByValue(valor);
		if (valor == null) {valor = '';}
		if (typeof valor == 'string') {valor = trim(valor);}
		if (indice < 0 || valor == '') {valor = apex_ef_no_seteado;desc='';}
		if (! descr) {
			return valor;
		} else {
			return desc;
		} 
	};
	
	ef_combo_editable.prototype.set_solo_lectura = function(solo_lectura) {
		this._get_combo().disable(typeof solo_lectura == 'undefined' || solo_lectura);
		this._solo_lectura = typeof solo_lectura == 'undefined' || solo_lectura;
	};
	
	ef_combo_editable.prototype.set_permite_escribir = function(permite_escribir) {
		this._get_combo().readonly(typeof permite_escribir == 'undefined' || (! permite_escribir));
		this._permite_escribir = typeof permite_escribir == 'undefined' || (! permite_escribir);
	};
	
	ef_combo_editable.prototype.validar = function () {
		if (! ef.prototype.validar.call(this)) {
			return false;
		}
		var valor = this.get_estado();
		if (this._obligatorio && valor == apex_ef_no_seteado) {
			this._error = 'es obligatorio.';
		    return false;
		} else {
			return true;
		}	
	};
	
	//---Comandos 
		
	ef_combo_editable.prototype.seleccionar = function () {
		try {
			var combo = this._get_combo();
			combo.render(false);
			combo.openSelect();
			combo.closeAll();
			combo.render(true);
			return true;
		} catch(e) {
			return false;
		}
	};	
	
	ef_combo_editable.prototype.set_estado = function(nuevo) {
		//Ver si existe entre las opciones que tengo
		var indice = this._get_combo().getIndexByValue(nuevo);
		
		if (indice >= 0 ) {//&& indice != '' && indice != 'undefined') {
			//Si existe la seteo
			this._get_combo().selectOption(indice,true,true);
			return;
		} else {//Si no est� valido si existe y la traigo
			this._setear_opcion(nuevo,false);
			return;
		} 
	};
	
	ef_combo_editable.prototype.resetear_estado = function() {
		var combo = this._get_combo();
		combo.unSelectOption();
		combo.setComboText('');
		combo.callEvent("onChange",[]);
	};
	
	/**
	 * Elimina las opciones disponibles en el combo
	 */		
	ef_combo_editable.prototype.borrar_opciones = function() {
		var combo = this._get_combo();
		combo.closeAll();
		combo.clearAll();
		this.resetear_estado();
	};	
	
	/**
	 * Cambia las opciones del combo
	 * @param valores Objeto asociativo id=>valor
	 */	
	ef_combo_editable.prototype.set_opciones = function(valores, desplegar) {
		if (typeof desplegar == 'undefined') {
			desplegar = true;
		}
		var combo = this._get_combo();
		//Borro las opciones que existan
		combo.closeAll();
		combo.clearAll();
		
		//Creo los OPTIONS recuperados
		var datos = [];
		for (i in valores) {
			if (i != 'nopar') {
				datos.push([i, valores[i]]);
			}
		}
		combo.addOption(datos);
		if (desplegar) {
			combo.openSelect();
		}
		if (datos.length == 0) {
			this.resetear_estado();
		}	
		return;
	};
	
	/**
	 * El ef_combo_editable esta oculto?
	 * @return boolean
	 */
	ef_combo_editable.prototype.es_oculto = function() {
		return this._es_oculto;		
	};
		
	/**
	 * Oculta temporalmente el elemento y su etiqueta
	 * @param {boolean} resetar Adem�s de ocultar el elemento borra su estado o valor actual, por defecto false
	 * @see #mostrar
	 */
	ef_combo_editable.prototype.ocultar = function(resetear) {
		if (typeof resetear == 'undefined') {
			resetear = false;
		}
		if (this._es_oculto == true) {return;}
		ef.prototype.ocultar.call(this,resetear);
		this._get_combo().show(false);
		this._es_oculto = true;		
		if (resetear) {
			this.resetear_estado();
		}
	};
	
	/**
	 * Muestra el elemento previamente ocultado
	 * @param {boolean} resetar Adem�s de ocultar el elemento borra su estado o valor actual
	 * @see #ocultar
	 */
	ef_combo_editable.prototype.mostrar = function(mostrar, resetear) {
		if (typeof mostrar == 'undefined') {
			mostrar = true;
		}
		if (mostrar && this._es_oculto == false) {return;}
		ef.prototype.mostrar.call(this,mostrar,resetear);
		if (mostrar) {
			this._get_combo().show(true);
			this._es_oculto = false;
		} else {
			this.ocultar(resetear);	
		}
	};
	
	ef_combo_editable.prototype.input = function() {
		return this._get_combo().DOMelem_input;
	}

toba.confirmar_inclusion('efs/ef_combo_editable');