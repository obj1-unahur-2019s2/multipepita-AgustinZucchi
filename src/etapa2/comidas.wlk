
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
}

// despues, agregar mijo y canelones

object mijo {
	var energia = 0
	method estaSeco() {energia = 20}
	method estaMojado() {energia = 15} 
	method energiaPorGramo() {return energia} 
}

object mijo_alternativo{
	var mojado = false
	
	method mojarse() {mojado = true}
	method secarse() {mojado = false}
	method energiaPorGramo(){
		if (mojado){
			return 15
		} else {
			return 20
		}
	}


object canelones{
		var energia = 20
		method ponerSalsa() {energia += 5}
		method ponerQueso() {energia += 7}
		method sacarSalsa() {energia -= 5}
		method sacarQueso() {energia -= 7}
		method energiaPorGramo() {return energia}
	}
}

object canelones_largo{
	var tieneQueso = false
	var tieneSalsa = false
	method ponerSalsa() {tieneSalsa = true}
	method sacarSalsa() {tieneSalsa = false}
	method ponerQueso() {tieneQueso = true}
	method sacarQueso() {tieneQueso = false}
	method energiaPorGramo() {
		if (not tieneSalsa and not tieneQueso) {
			return 20
		} else if (tieneSalsa and not tieneQueso) {
			return 25
		} else if (not tieneSalsa and tieneQueso) {
			return 27
		} else if (tieneSalsa and tieneQueso) {
			return 32
		}
	}
	
}