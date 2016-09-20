//: Playground - noun: a place where people can play

import UIKit
import Darwin

var str = "Let's the challenge begin"

print(str)



// MARK: functions

func question<A>(message: String, answer: A){
    print("Question ?\n",message, "?")
    print("Answer:",  answer)
    
}

func countBucket(buckets: Int) -> Int{
    var move = Int(arc4random_uniform(10))
    func moveBucket(buckets: Int) -> Int{
        move += buckets
        return move
    }
    question(message: "Will it be compiler error", answer: false)
    return moveBucket(buckets: buckets)
}

print(countBucket(buckets: 4))

//MARK: Classes

class Orc {
    let maxHealth = 100
    var power = 30
    var xp: Int
    
    var destiny: String?
    var name: String
    init(name: String, xp: Int, health: Int){
        self.name = name
        self.xp = xp
    }
    func atack() -> Int{
        var damage = 0
        damage += power
        return damage
    }
}

class Shaman: Orc{
    var mana = 100
    var spells: [String]
    let spellCost = 20
    let spellPower = 30
    
    
    init(spells: [String], mana: Int, name: String, xp: Int, health: Int){
        self.spells = spells
        self.mana = mana
        
        super.init(name: name, xp: xp, health: health)
    }
    
    override func atack() -> Int {
        var damage = 0
        for _ in self.spells {
            if mana > spellCost {
                mana -= spellCost
                damage += spellPower
            }else{
                break
            }
        }
        return damage
    }
}

var trall: Shaman? = Shaman(spells: ["lightening","frost bolt","fire ball"], mana: 200, name: "Trall", xp: 10, health: 80)
print("trall attack with \(trall?.atack())")

//MARK: optinals
question(message: "how can we define shaman, without inslling some properties of orc class", answer: "You can do by optinal sign '?' or by '!'")

func testOptinal(){
    let opt1: Int? = 10
    let opt2: Int! = 10
    
    print(opt1, terminator:" - ")
    if let value = opt2 {
        print(value)
    }
    question(message: "What's the difference bettwean '?' and '!' operator", answer: "'?' used if value may be nil\n '!' used if value may not be nil")
}

testOptinal()

question(message: "Write a func what get int from string", answer: "the answer is below")

func getIntFromString(str: String) -> Int?{
    let number: Int?
    number = Int(str)
    if number == nil{
        print("cant convert \(str) into Int")
    }else{
        print(number)
    }
    return number
}

getIntFromString(str: "4")

question(message: "How to make optional default value", answer: "use ?? after expresion")
question(message: "Can be class variable be optional", answer: true)
question(message: "How to avoid checking class variable for nil and object property for nil", answer: "use 'optional chaining shaman?.name'")

if let dest = trall?.destiny{
    print("tral destiny: \(trall?.destiny)")
}else{
    print("trall has no destiny")
}
question(message: "How to check if func of object was executed or not?", answer: "Just check it for nil.\n the code is below")
if trall?.atack() != nil {
    print("trall can atack")
}
var grades = ["Joe":[3,4]]
if let x = grades["fuck"]?[1]{
    print("found: \(x)")
}else{
    print("Not found!")
}
