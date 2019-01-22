import Cocoa

var str = "Hello, playground"
func doubleIt(a:inout Int){ a *= 2}
var eh = 5
print("eh was \(eh)")
doubleIt(a: &eh)
print("Now eh is \(eh)")

func addUp(data:Int ...) -> Int {
    var sum = 0
    for num in data {
            sum += num
    }
return sum
}
print("The sum is \(addUp(data: 3,4,18,2))")


var a:Double = 9.0

func calcSqrt(z:inout Double){
    z = sqrt(z)
}
print(calcSqrt(z: &a))

var m = 4
print(m % 5)

func allEven(data:Int ... ) -> Bool {
    var count:Int = 0
    for i in data{
        if i%2 == 0{
            count += 1
        }
    }
    if count == data.count{
        return true
    }
    else{
        return false
    }
}
var output:Bool = allEven(data: 2,4,6,8,10)
if output{
    print("They are all even")
} else{
    print("They are not all even")
}

func fibo(number: Int){
    
}
