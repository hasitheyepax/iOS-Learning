
class Enemy {
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        self.attackStrength = attackStrength
        self.health = health
    }
    
    func takeDamage(amount: Int) {
        health -= amount
    }
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Lands a hit, does \(attackStrength) damage.")
    }
}
