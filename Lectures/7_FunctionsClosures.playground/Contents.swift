/*:
 # Look back:
 * If, guard, switch
 * Optionals
 * Struct, Class
 * Types
 *

 */

//enum Move {
//    case go(Int)
//    case turn(Direction)
//
//    enum Direction {
//        case left, right, turnBack
//    }
//}
//
//let movement = Move.go(3)
//
//switch movement {
//    case .go(let numberOfSteps):
//        for _ in 0...numberOfSteps {
//            //move()
//        }
//    case .turn(let direction):
//
//}

/*:
 # Lecture 7
 # Functions, Closures

 * Введение в функции и замыкания
*/

//: ## Functions
// Define
func functionName (id index: Int, param2: Double) -> Int {
  //body of the function
    return index
}

var function = functionName
var result = functionName(id: 1, param2: 12.1)
function(1, 1.2)

functionName(id: 1, param2: 1)


func printOnScreen(_ value: Int = 1) {
    print(value)
}
printOnScreen(11)

func fullTank(amount: Double = 100.0) {

}

fullTank()

class CustomType {}

func configureInterface(config: CustomType? = nil) {

}

configureInterface()
configureInterface(config: CustomType())


func color (_ red: Int? = 1, _ green: Int? = 1, _ blue: Int? = 1) -> (Int, Int, Int) {
    guard let red = red,
        let green = green,
        let blue = blue else {
            return (0, 0, 0)
    }

//    return red + green + blue
    return (red, green, blue)
}
var colorComponent: Int? = nil
let variable = functionName(id: 1, param2: 1.5)
color()


struct CustomStruct {
//    var
//    let
    func shortAction() {

    }
    static func internalFunc() {
//        shortAction()
    }
}

var customStructVar = CustomStruct()
customStructVar.shortAction()
CustomStruct().shortAction()
CustomStruct.internalFunc()

// Parameters

// Default value

// Return value

// inout

func multiplyOnTen(value: inout Int) {
    value *= 10
}

var givenValue = 5
multiplyOnTen(value: &givenValue)
givenValue
import Foundation

func resolveString(text: inout String) {
    let placeholder = "{APP_VERSION}"
    let version = "v0.0.1"
    text = text.replacingOccurrences(of: placeholder, with: version)
}

var givenText = "Jan 23, 2019 - In Swift 2 the use of split becomes a bit more complicated due to the ... componentsSeparatedByString() // And then to access the individual words: {APP_VERSION} Jan 23, 2019 - In Swift 2 the use of split becomes a bit more complicated due to the ... componentsSeparatedByString() // And then to access the individual words: v"
resolveString(text: &givenText)
givenText

//var multiplyResult = multiplyOnTen(value: 5)

//: ## Closures
//: [Documentation](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)
var customClosure: (Int, Double) -> Int = { (intValue, doubleValue) -> Int in
    print(intValue)
    print(doubleValue)
    return intValue + Int(doubleValue)
}
//func functionName (id index: Int, param2: Double) -> Int {
//    return index
//}
var customClosureShort: () -> Void = {
    print("Hello world!")
}
customClosureShort()
let constantClosure = customClosureShort
constantClosure()

var cCShortening: (Int, Double) -> Int = { $0 + Int($1) }


//{ (parameters) -> return type in
//    statements
//}
//typealias MyClosure = (Int, String) -> Void
//var customClosure: (Int, String, Double) -> Void = {
//    print("closure is called")
//    print($0)
//    print($1)
//    print($2)
//}
//var newClosure = customClosure
//newClosure(1, "Hello", 1.0)
//
//var oneMoreClosure: MyClosure = { myInteger, myString in
//
//}

func operation(arg1: Int, arg2: Int, closure: (Int, Int) -> Void) {
    closure(arg1, arg2)
}

let handler1: (Int, Int) -> Void = {
    print($0 * $1)
}

operation(arg1: 5, arg2: 5, closure: handler1)

operation(arg1: 7, arg2: 7, closure: { (arg1, arg2) in
    print(arg1 + arg2)
})

operation(arg1: 12, arg2: 12) {
    print($0 * $1)
}

var array = [1, 2, 3]
array.reduce(0) { (result, intValue) -> Int in
    result + intValue
}

// Same implementation:

let handler3: (Int, Int) -> Int = {
    $0 + $1
}
var result1 = 0

for element in array {
    result1 = handler3(result1, element)
}

array.reduce(0, +)

//array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
//array.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)

//: ### Homework:

//1. Write a Swift program to check if two given arrays of integers have 0 as their first element.
//произвести проверку двух массивов(Int) являются ли их первые элементы нулями и вывести соответствующее сообщение в консоль.
//2. Write a Swift program to test if an array of integers does not contain a 3 or a 5.
//произвести проверку двух массивов(Int) на отсутствие в них элементов 3 и 5 и вывести соответствующее сообщение в консоль
//3. Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
//произвести проверку одинаковы ли первый и последний элементы данного массива(Int) и вывести соответствующее сообщение в консоль
//4. Write a Swift program that creates Array, adds an item, remove item, modify item and then prints size of the array.
//проинициализировать массив, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер массива(количество элементов)
//5. Write a Swift program that creates Dictionary, adds an item, remove item, modify item and then prints size of the Dictionary.
//проинициализировать словарь, добавить в него элемент, удалить элемент, модифицировать какой-нибудь элемент и вывести в консоль размер словаря(количество элементов)
//6. Write a Swift program that creates Set, adds an item and then prints size of the Set.
////проинициализировать Сет, добавить в него элемент и вывести в консоль размер Сета(количество элементов)
//7. Create 2 arrays, and merge them.
//проинициализировать 2 массива и объединить(можно в новом массиве)
//8. Write a closure to sum 2 integers, pass closure as argument to function, where return the result of calling that closure.
//Написать замыкание(closure), задача которого складывать 2 полученных аргумента типа Int и вернуть его и вывести в консоль.

//9. Подготовить примеры:
// array.map(<#T##transform: (Int) throws -> T##(Int) throws -> T#>)
// array.filter(<#T##isIncluded: (Int) throws -> Bool##(Int) throws -> Bool#>)


//задание 1

let array1 = [8,17,9,132,201,]
let array2 = [0,10,79,2,12,42,]

if array1[0] == 0 && array2[0] == 0 {
    print(" массивы начинаются с 0")
}
else if array1[0] == 0 || array2[0] == 0 {
    print("в одном из массивов первый элемент 0")
}
else{
    print("ни в одном из массивов первый элемент не 0")
}

// задание 2
//вариант 1

if (array1.contains(3) && array1.contains(5)) && (array2.contains(5) && array2.contains(3)) {
    print ("массив содержит  3 и 5")
}
else if (array1.contains(5) && array1.contains(3)) || (array2.contains(3) && array2.contains(5)) {
    print ("один из массивов содержит 3 и 5")
}
else {
    print ("ни один из массивов не содержит 3 и 5")
}



//// вариант2
//func number35 (array1: [Int], array2: [Int]) -> Bool {
//    // ! - делает инверсию и получается прозиводит в обратную сторону
//    if !array1.contains(3) && array2.contains(5){
//        print("отсутсвуют")
//    }
//    else {
//        print("присутствуют")
//            }
//    return false
//}
////
// задание 3

if array1.first == array1.last {
    print("первый и последний элементы массива равны")
}
// задание 4
var myArray: Array<Int> = []
// добавить элемент в конец массива
myArray.append(9)
// добавить элемент по индексу
myArray.insert(5, at: 1)
// удалить первый и последний элемент массива
myArray.removeFirst()
myArray.removeLast()
// удалить элемент массива по индексу
//myArray.remove(at: 0)
// удалить все из массива
//myArray.removeAll()
//// посчитать количество элементов в массиве

print("Содержит в себе массив: \(myArray.count) элементов")

// задание 5

var myDictionary: Dictionary<Int, String> = [:]
if myDictionary.isEmpty {
    myDictionary[0] = "жыве беларусь"
    print("Количество элементов в словаре: \(myDictionary.count)")
}
//удалить элемент из словаря по ключу
myDictionary.removeValue(forKey: 0)

// задание 6
var mySet: Set<Int> = [16,24,8,99,202]
//  добавить элемент в сет и посчитать все элементы в сете и вывести в консоль
mySet.insert(3)
print("количество элементов в сете: \(mySet.count)")

// задание 7

var ar1 = [1,2,3]
let ar2 = [4,5,6]
let ar3 = ar1 + ar2
print(ar3)

// добавляем один массив к другому
ar1.append(contentsOf: ar2)
print(ar3)
// 2 вариант объединенения через flatMap в новый массив

let flatArray = [ar1, ar2].flatMap({(element: [Int]) -> [Int] in
    return element
})

// задание 8

func summa(firstChislo: Int, secondChislo: Int, closure: (Int, Int) -> Int) {
    closure(firstChislo, secondChislo)
}
let handler: (Int, Int) -> Int = {
    print("Сумма чисел  \($0 + $1)")
}
