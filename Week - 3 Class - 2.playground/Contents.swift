import Cocoa

var str = "Hello, playground"
class Animal {
    var name:String
    
    var description:String {
        return "Name: \(name)"
    }
    init(name:String){
        self.name = name
    }
    
    func speak() -> String{
        return "I would just like to say ... "
    }
}
class Dog : Animal {
    
    var hasLeash:Bool
    override var description:String {
        return "\(super.description), has leash: \(hasLeash ? "yes" : "no")"
    }
    
    init(hasLeash:Bool, name:String){
        self.hasLeash = hasLeash
        super.init(name:name)
    }
    
    convenience init() {
        self.init(hasLeash: false, name: "")
    }
    
    override func speak() -> String {
        return super.speak() + "woof"
    }
}
class Bird : Animal {
    
    var eatsSeeds:Bool
    override var description:String {
        return "\(super.description), eats seeds: \(eatsSeeds ? "yes" : "no")"
    }
    init(eatsSeeds:Bool, name:String){
        self.eatsSeeds = eatsSeeds
        super.init(name:name)
    }
    
    convenience init() {
        self.init(eatsSeeds: false, name: "")
    }
    
    override func speak() -> String {
        return super.speak() + "tweet"
    }
}

var myPet:Animal
myPet = Dog()
print(myPet.speak())
myPet = Bird()
print(myPet.speak())
