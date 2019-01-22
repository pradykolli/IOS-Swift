 import Cocoa

 var letter: Character = ","
 switch letter{
 case "a" ... "m": print("first half of alphabet")
 case "A","E", "I", "O", "U": print("Capitalized vowels")
 case "q": fallthrough //gets it to the next case that is it jums to the next staement and execute it.
 case "Q": print("This is the letter q or Q")
 default: print("Some Other character")
 }

 var  num1:Int = 2
 var num2:Int = 5
 var calc:Int = 1
 switch calc{
 case 1: print(num1 + num2)
 case 2: print(num1 * num2)
 case 3: print(num1 - num2)
 default :print("Nah")
 }
 
 func helloWorld(){
    print("Hello World")
 }
helloWorld()

// var name:String = "PradyKolli"
// func sayhello(name:String) -> Void{
//    print("Pleased to meet you, ",name )
// }
//sayhello(name: name)
//
// func bonjour(name: String, inFrench:Bool) -> String{
//    if inFrench{
//        return "Bonjour, mon ami \(name)"
//    } else{
//        return "Hello my friend \(name)"
//    }
// }
// var out:String = bonjour(name: name, inFrench: true)
//print(out)
//
// func mean(x:Double, y:Double, z:Double) -> Double{
//    return (x + y + z) / 3.0
// }
// print(mean(x:20, y:10, z:30))

 print("abc")

 func doubleIt(a:inout Int){ a *= 2}
 var eh = 5
 print("eh was \(eh)")
 doubleIt(a: &eh)
print("Now eh is \(eh)")
