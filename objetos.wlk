/** First Wollok example */
import wollok.game.*

object lionel {
	const balon = pelota
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method inicio() {
		position = game.at(0,5)
	}
	
	method buscarla(){
		position = balon.position()
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
