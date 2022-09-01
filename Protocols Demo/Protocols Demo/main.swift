protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if (isFemale){
            print("bird makes a new bird in a shell")
        }
    }
}

class Eagle : Bird, CanFly {
    func fly() {
        print("the eacgle flaps its wings and lifts into the sky")
    }
    
    func soar() {
        print("the eagle glides in air using air currents")
    }
}

class Penguin: Bird {
    func swim() {
        print("the penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

class Airplane: CanFly {
    func fly() {
        print("the plane flies with engines")
    }
}

let myEagle = Eagle()

//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()
//
let myPenguin = Penguin()
//
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly()

let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
