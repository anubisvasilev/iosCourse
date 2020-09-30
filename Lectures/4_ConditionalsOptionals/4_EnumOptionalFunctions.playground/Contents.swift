import UIKit


/*:
 # Вспомним:
 * Какие базовые типы данных в Swift?
 * Какие ключевые слова используются для объявления констант и переменных?
 * Чем отличаются константы от переменных?
 * Какие арифметические операторы вы знаете?
 * Какие логические операторы вы знаете?
 * Value vs. Refernce type?
 * Синтаксис метода
 * Static vs Instance


 # Не успели:
 * Methods Void/Returning
 * Class inheritance - https://docs.swift.org/swift-book/LanguageGuide/Inheritance.html
 * Применение Struct and Class
 * Extensions + Protocols - https://docs.swift.org/swift-book/LanguageGuide/Extensions.html
 * Tuple
 * Enum - https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html

*/

/*:
 # 4 Conditional Statements + Optionals

 * Условные операторы **If, guard, switch** https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html
 * Опционалы
*/
//: ## Conditional statements
//: * [Documentation](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)

//: Logical operators: AND, OR

//:  if
var firstItem = 1
var secondItem = 1

if firstItem > secondItem {
    print(">")
} else {
    if firstItem < secondItem {
        print("<")
    } else {
        print("=")
    }
}

//
var thirdItem = 3
var fourth = 4
//fourth.words
Int.min

if (firstItem == secondItem) && (thirdItem < fourth) {
    print("Yes")
}

if (firstItem == secondItem) || (thirdItem > fourth) {
    print("Yes")
}
//: guard
func function() {
    guard firstItem != secondItem else {
        print("wrong value")
        return
    }
    print("true")
}
function()
//: ternary operator
let constantBoolean = (firstItem == secondItem) ? true : false
let constantInt = (firstItem == secondItem) ? 10 : 20
//let constantInt2 = (firstItem == secondItem) ? print("") : print("")
//:switch
//several possible matching patterns
var booleanVarForSwitch = firstItem == secondItem

//switch booleanVarForSwitch {
//case true:
//    print("true")
//default:
//    print("false")
//}

var switchInteger = 10

switch switchInteger {
case 1:
    print("1")
case 5:
    print("5")
case 10:
    print("10")
//    fallthrough
//break
default:
    print("default action")
}

//: ### Extended
// SDK availability check: if #available(iOS 10, macOS 10.12, *)
// switch + advanced features
//
//: -------------------------------------------------
/*:
 ## Optionals
 * [Documentation](https://developer.apple.com/documentation/swift/optional)
 * [Source code](https://github.com/apple/swift/blob/master/stdlib/public/core/Optional.swift)
 ### What is optional?
 */
var optionalInt: Int?

print(optionalInt)

func printNonOptional(value: Int){
    print(value)
}

//printNonOptional(value: optionalInt)



//Example for video assets properties (e.g. season number)
//: ### Unwrapping
//what is unwrapping

//:* using if-statement

//: * Optional binding
//if let
if let nonOptional = optionalInt {
    printNonOptional(value: nonOptional)
} else {
//    nonOptional
}

// Caution! Careful with structs

//guard let
optionalInt = 11
func guardlet() {
    guard let nonOptional = optionalInt else {
        return
    }
    nonOptional
}

guardlet()
//: * Optional chaining
optionalInt?.distance(to: 100)

//: * nil-coalescing operator
print(optionalInt ?? "there is nil")
let nonOptional2 = optionalInt ?? 555
//: * Force(unconditional) unwrap
let nonOptionalForced = optionalInt!

if optionalInt != nil {

}

if let nonOpt = optionalInt {
    print("smth")
}






//: ## Задание:
//: * [App Development with Swift](https://books.apple.com/by/book/app-development-with-swift/id1465002990) **Units 1.1-1.4 + Units 2.1-2.4**

//: ### Практика:
// Написать ряд функций одного объекта:
// 1. Функция принимающая 2 аргумента типа Int, сравнивает их значения и выводит в консоль результат сравнения в виде: "Аргумент 1 больше, чем Аргумент 2".
// 2. Функция получает 3 аргумента, если среди них хотя бы 2 аргумента равны, то выводит ответ в виде: "2 аргумента равны", противном случае выдать ответ "равных аргументов нет".
// 3. Функция получает опциональный Int аргумент, затем проверяет ее на nil: если есть значение - выводит его в консоль, если нет - выводит фразу "no value"

func twoArg(arg1: Int, arg2: Int) {
    if arg1 > arg2 {
        print("Значение 1 больше, чем значение 2")
    } else if arg2 > arg1 {
        print("Значение 2 больше, чем значение 1")
    } else  {
        print("Значения равны")
    }
    
}
twoArg(arg1: 1, arg2: 2)


func threeArgument(arg1: Int, arg2: Int, arg3: Int) {
    if (arg1 == arg2) || (arg2 == arg3) || (arg1 == arg3) {
        print("Два аргумента равны друг другу")
    } else if (arg1 < arg2) && (arg2 < arg3) {
        print("Равных аргументов нет")
    }
}
threeArgument(arg1: 1, arg2: 2, arg3: 3)

func noValue(argOpt: Int?) {
    if argOpt != nil {
        print("Значение существует и равно \(argOpt")
    } else {
        print("No value")
    }
    
}
noValue(argOpt: 1)
noValue(argOpt: nil)

//: ### Advanced:
//: * https://www.hackerrank.com/


