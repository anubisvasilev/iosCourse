import UIKit

//var str = "Hello, playground"
//
//func firstZero(_a: [Int], b: [Int]) -> Bool {
//    if a.first == 0 && b.first == 0 {
//        return true
//  }
//    return false
//}
//
//
//
//
func no35 (_c: [Int]b: [Int]) -> Bool {
    // ! - делает инверсию и получается прозиводит в обратную сторону
    if !c.contains(3) && b.contains(5){
        print("отсутсвуют")
    }
    else {
        print("присутствуют")
    }
}

//
//class ReferenceObject {
//    var variable = 0
//
//    deinit {
//        print("DEINIT")
//    }
//}
//
//var object1 = ReferenceObject()
//var object2 = object1
//object1 = ReferenceObject()
//
//var object3 = ReferenceObject()
//object3.variable = 111
//
//object3 = nil
//
//// замыкание
//var closure: () -> Void = {
//    print(object3?.variable)
//}
//closure()

// ЗАМЫКАНИЕ
class ReferenceObject {
    var variable = 0
    var closure: (() ->Void)?
    init() {
        closure = {
            print(self.variable)
        }
    }
    deinit {
        print("DEINIT")
    }
}
var object3 = ReferenceObject()
object3.variable = 111

var closure = object3.closure
object3 = ReferenceObject()
object3.variable
object3.variable = 333

object3.closure?()
closure?()

var computedProperty: Int {
    let value = 1+1+1+1
    print(value)
    return value
}
var property: Int = {
    let value = 1+1+1+1+1+1+1
    print(value)
    return value
} ()

func bubbleSort (array: inout [Int]) {
    for i in 0..<array.count {
        for j in 0..<array.count-i-1 {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
            
        }   }
    }
    
}
    var array = [111,0,12,23,234,23,25,4537]
bubbleSort(array: &array)
print(array)



func hello(name: String, age: Int, location: String) {
    print("hello \(name). I live in \(location) too.  When is your \(age + 1)th birthday?")
}

hello(name: "Robot", age: 18, location: "Minsk")
