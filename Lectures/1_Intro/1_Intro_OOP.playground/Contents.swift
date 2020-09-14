
/*:
 # iOS Development
 by **Vadim Zhuk**
 ## Lecture 1 - Intro. OOP
 * OOP - Object Oriented Programming
 * Swift programming language
 * Developer tools
 */

/*:
 ## Links:
 - [Swift Language Guide](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
 - [Swift API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)
 - [Alt Swift Style Guide](https://google.github.io/swift/)
 - [OOP from the code](http://xahlee.info/comp/oop.html)
 - [ООП по-русски](https://habr.com/ru/post/463125/)
*/
import UIKit

// MARK: - 1
// Abstraction, Inheritance, Incapsulation, Polymorphism

// Абстракция
class Vehicle {
    func move() {
        print("move")
    }
}

// Наследование
class Car: Vehicle {
    let numberOfWheels = 4
}

class Bicycle: Vehicle {
    let numberOfWheels = 2
}

var car = Car()
car.move()
car.numberOfWheels

var bike = Bicycle()
bike.move()
bike.numberOfWheels

// CONTROL SAMPLE
class Control {

    private func transmit(code: String) { // Инкапсуляция
        print(code)
    }

    func button1Pressed() {
        transmit(code: "0000001")
    }
}

class TVControl: Control {
    override func button1Pressed() { // Полиморфизм
        print("indication")
        super.button1Pressed()
    }

    func redButtonPressed(){
//        transmit(code: "99999999") - не доступен
        button1Pressed()
    }
}

var realTVControl = TVControl()
realTVControl.redButtonPressed()

/*:
 # Homework:
 - Регистрация на GitHub
 - App Development with Swift (XCode 10) - Глава 1.1
*/
