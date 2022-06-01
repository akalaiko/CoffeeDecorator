import UIKit

protocol Coffee {
    var cost: Int { get }
}

class SimpleCoffee: Coffee {
    var cost = 0
    
    init(cost: Int) {
        self.cost = cost
    }
}

protocol CoffeeDecorator: Coffee {
    var coffeeBase: Coffee { get }
    
    init(coffeeBase: Coffee)
}

class Milk: CoffeeDecorator {
    var coffeeBase: Coffee
    
    var cost: Int {
        return coffeeBase.cost + 5
    }
    
    required init(coffeeBase: Coffee) {
        self.coffeeBase = coffeeBase
    }
}

class Sugar: CoffeeDecorator {
    var coffeeBase: Coffee
    
    var cost: Int {
        return coffeeBase.cost + 2
    }
    
    required init(coffeeBase: Coffee) {
        self.coffeeBase = coffeeBase
    }
}

class IceCream: CoffeeDecorator {
    var coffeeBase: Coffee
    
    var cost: Int {
        return coffeeBase.cost + 10
    }
    
    required init(coffeeBase: Coffee) {
        self.coffeeBase = coffeeBase
    }
}

class Syrup: CoffeeDecorator {
    var coffeeBase: Coffee
    
    var cost: Int {
        return coffeeBase.cost + 6
    }
    
    required init(coffeeBase: Coffee) {
        self.coffeeBase = coffeeBase
    }
}

let espresso = SimpleCoffee(cost: 10)
let latte = Milk(coffeeBase: espresso)
let affogato = IceCream(coffeeBase: espresso)
let caramelLatte = Syrup(coffeeBase: latte)


espresso.cost
latte.cost
affogato.cost
caramelLatte.cost



