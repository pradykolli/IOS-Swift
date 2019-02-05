import Cocoa
class Shape: CustomStringConvertible{
    var centerX:Double
    var centerY:Double
    var isSolid:Bool
    var quadrant: Int{
        get{
            if centerX > 0 && centerY > 0{
                return 0
            }
            else if centerX < 0 && centerY > 0{
                return 1
            }
            else if centerX < 0 && centerY < 0{
                return 2
            }
            else if centerX > 0 && centerY < 0{
                return 3
            }
            else{
                return -1
            }
        }
    }
    var description:String { return "centerX: \(centerX), centerY:\(centerY), isSolid: \(isSolid)" }
    func draw(){
        print("I am a shape")
    }
    func translate(deltaX:Double, deltaY:Double){
        centerX += deltaX
        centerY += deltaY
    }
    func flip(axis:Character){
        if axis == "x" || axis == "X"{
            centerY *= -1
        }
        else if axis == "y" || axis == "Y"{
            centerX *= -1
        }
    }
    func perimeter() -> Double{
        return 0.0
    }
    func area() -> Double{
        return 0.0
    }
    
    convenience init(){
        self.init(centerX:0.0, centerY:0.0, isSolid:false)
    }
    
    convenience init(centerX:Double, centerY:Double){
        self.init(centerX: centerX, centerY: centerY, isSolid:false)
    }
    
    init(centerX:Double, centerY:Double, isSolid:Bool){
        self.centerX = centerX
        self.centerY = centerY
        self.isSolid = isSolid
    }
    
}

class Rectangle: Shape{
    var width: Double
    var height: Double
    
    var isSquare:Bool{
        get{
            if width == height{
                return true
            }
            else{
                return false
            }
        }
    }
    override var description:String { return super.description + ", width: \(width), height:\(height)" }
    
    override func draw(){
        print("I am a rectangle")
        super.draw()
    }
    func contains(x:Double, y:Double) -> Bool {
        let xlow:Double = super.centerX - (width/2)
        let xhigh:Double = super.centerX + (width/2)
        let ylow:Double = super.centerY - (height/2)
        let yhigh:Double = super.centerY + (height/2)
        if x >= xlow && x <= xhigh{
            return true
        }
        else if y >= ylow && y <= yhigh{
            return true
        }
        else{
            return false
        }
    }
    override func perimeter() -> Double{
        return 2*(width+height)
    }
    
    override func area() -> Double{
        return width*height
    }
    
    convenience init(){
        self.init(centerX:0.0, centerY:0.0, isSolid:false, width:0.0, height:0.0)
    }
    convenience init(width:Double, height:Double){
        self.init(centerX:0.0, centerY:0.0, isSolid:false,  width:width, height:height)
    }
    init(centerX:Double, centerY:Double, isSolid:Bool,  width:Double, height:Double){
        self.height = height
        self.width = width
        super.init(centerX:centerX, centerY:centerY, isSolid:isSolid)
    }
}
var sketchpad:[Shape] = [
    Shape(),
    Shape(centerX:25.0 , centerY:25.0),
    Shape(centerX:30.0 , centerY:-15.0, isSolid:true), Rectangle(),
    Rectangle(width:100.0, height:50.0),
    Rectangle(centerX:-25.0, centerY:-35.0, isSolid:true, width:250.0, height:250.0)
]


// print(sketchpad)
var totalPeri:Double = 0.0
for eachshape in sketchpad{
    totalPeri += eachshape.perimeter()
}
print("Total average perimeter of the shapes is: ",totalPeri/Double(sketchpad.count))

var areaSmall:Double = sketchpad[0].area()
for i in stride(from: 0, to: sketchpad.count, by: 2){
    //Taking even indices as even elements
    let temparea: Double = sketchpad[i].area()
    if temparea < areaSmall{
        areaSmall = temparea
    }
}
print("The smallest area of the even elements in sketchpad is: ",areaSmall)

for i in stride(from: 0, through: 2, by: 1){
    sketchpad[i].flip(axis:"x")
}

for i in stride(from: 3, through: 5, by: 1){
    sketchpad[i].flip(axis:"y")
    //print("sketchpad",sketchpad[i])
}
print("The first element is in :",sketchpad[0].quadrant,"The last element is in :",sketchpad[sketchpad.count-1].quadrant)

for eachshape in sketchpad{
    let val1:Double = Double.random(in: -100...100)
    let val2:Double = Double.random(in: -100...100)
    eachshape.translate(deltaX: val1, deltaY: val2)
}
print("Post moving the shapes the data is:")
for i in stride(from: sketchpad.count-1, through: 0, by: -1){
    print(sketchpad[i])
}
