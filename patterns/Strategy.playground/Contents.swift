

protocol BasicStrategy {
	func actionPerson1()
	func actionPerson2()
	func actionPerson3()
}


class AttackStrategy: BasicStrategy {
	
	func actionPerson1() {
		print("Герой 1 - атакуй всех врагов")
	}
	
	func actionPerson2() {
		print("Герой 2 - атакуй всех врагов")
	}
	
	func actionPerson3() {
		print("Герой 3 - атакуй всех врагов")
	}
}


class DefenceStrategy: BasicStrategy {
	
	func actionPerson1() {
		print("Герой 1 - атакуй всех врагов")
	}
	
	func actionPerson2() {
		print("Герой 2 - Лечи героя 1")
	}
	
	func actionPerson3() {
		print("Герой 3 - защищай героя 2")
	}
}

class Player {
	var strategy: BasicStrategy
	
	func makeAction() {
		self.strategy.actionPerson1()
		self.strategy.actionPerson2()
		self.strategy.actionPerson3()
	}
	
	func changeStrategy(aStrategy: BasicStrategy) {
		self.strategy = aStrategy
	}
	
	init(strategy: BasicStrategy) {
		self.strategy = strategy
	}
}

let a = AttackStrategy()
let d = DefenceStrategy()

let p = Player(strategy: a)
p.makeAction()
print("- - - - - - -")
p.changeStrategy(aStrategy: d)
p.makeAction()
