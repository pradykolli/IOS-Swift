import Cocoa

var str = "Hello, playground"
print(str)
var nums:[Int] = []
for i in 0...999{
    nums.append(Int(arc4random_uniform(100)))
}
//print(nums)

func avgOfArray(_ nums:[Int]) -> Double {
    var sum:Int = 0
    for i in 0..<nums.count{
        sum = sum + i
    }
    let avg:Double = Double(sum / nums.count)
    return avg
}

func minOfArray(_ nums:[Int]) -> Int{
    var value:Int = nums[0]
    for i in 0..<nums.count{
        if value > i{
            value = i
        }
    }
    return value
}
func maxOfArray(_ nums:[Int]) -> Int{
    var value:Int = nums[0]
    for i in 0..<nums.count{
        if value < i{
            value = i
        }
    }
    return value
}

print("the average of the numbers in the array is: ",String(avgOfArray(nums)))
print("the min value of the numbers in the array is: ",String(minOfArray(nums)))
print("the min value of the numbers in the array is: ",String(maxOfArray(nums)))

