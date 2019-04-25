import UIKit
import PlaygroundSupport
var str = "Hello, playground"
var data = [10,20,30,40,50,60,70,80,90,100]
data = data.filter({(x:Int) -> Bool in return x % 6 == 0 })
print(data)

data = data.map{$0 * 2}
print(data)

class MyView:UIView{
    override func draw(_ rect:CGRect){
        let path:UIBezierPath = UIBezierPath()
        path.move(to:CGPoint(x: 20, y: 20))
        path.addLine(to: CGPoint(x: 120, y: 20))
        path.addLine(to: CGPoint(x: 70, y: 20))
        path.addLine(to: CGPoint(x: 70, y: 150))
        path.lineWidth = 5.0
        UIColor.green.setStroke()
        path.stroke()
    }
}

//PlaygroundPage.current.liveView = MyView()
class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black // .red
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

var sum = 0.0
let data = dataTF.text!

let dataParts = data.components(separatedBy: " ") //["32", "64"]
for numstr in dataParts{
    let num = Double(numstr)!
    sum += num
}
let averafe = sum / Double(dataParts.count)
