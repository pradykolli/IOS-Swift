import Cocoa

var str = "Hello, playground"

var changer:(Int)->Int = {(x:Int)->Int in return x*x}
changer(5)
func printTableFrom(start:Int, end:Int, calc:(Int) -> Int) {
    
    for i in start ... end {
        let result = calc(i)
        print("\(i) \(result)")
    }
    
}
//printTableFrom(start: 5, end: 10, calc: changer)

var randy:[Int] = []
for _ in 0..<25{
    randy.append(Int.random(in: 1...100))
}
let new = randy.map( {(cel:Int)->Int in
    return cel*cel*cel
    }
)
let cubes = randy.map({$0*$0*$0})
print(randy)
print(new)
let ps = randy.filter  ({(x:Int) -> Bool in return sqrt(Double(x)) == Double(Int(sqrt(Double(x))))})
print(ps)

func isPS(x:Int) -> Bool{
    return sqrt(Double(x)) - Double(Int(sqrt(Double(x)))) == 0
}
let psIs = randy.filter(isPS)
print(psIs)


func filter(_ data:[Int], using filterFunction:(Int)->Bool) -> [Int]{
    return data.filter(filterFunction)
}
filter(randy){$0%2 == 0}
