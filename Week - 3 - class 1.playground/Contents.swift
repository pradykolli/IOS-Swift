import Cocoa

var str = "Hello, playground"
struct Triangle{
    var side:Double
    var area:Double{
        get{
            
            return sqrt(3)/4 * side * side
        }
        set{
            side = sqrt((4 * newValue)/sqrt(3))
        }
    }
}
var equi = Triangle(side:10)
print("Area of tringle with side \(equi.side) is \(equi.area)")
equi.area = 200
print("Side of triangle with area \(equi.area) is \(equi.side)")
