import UIKit

// closures - capturing
// classes - deinit
// computed properties

// HOMEWORK:
// Implement Quick or Merge sort
// Write Algorithm to check if two rectangles overlap with each other
// data structures:
// binary tree
// linked list https://www.geeksforgeeks.org/linked-list-vs-array/
// https://www.raywenderlich.com/947-swift-algorithm-club-swift-linked-list-data-structure



class ReferenceObject {
    var variable = 0

    var computedProperty: Int {
        let value = property + 1+1+1+1 + variable
        print(value)
        return value
    }

    var property: Int = {
        let value = 1+1+1+1+1+1+1
        print(value)
        return value
    }()

    var closure: (() -> Void)?

    init() {
        closure = { [weak self] in
            print(self?.variable)
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
object3.computedProperty
object3.variable = 100
object3.computedProperty


func bubbleSort (array: inout [Int]) {

    for i in 0..<array.count {
        for j in 0..<array.count-i-1 {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
            }
        }
    }
}

var array = [111,0,12,23,234,23,25,4537,58,769,789,6,53,2,1,0,111,44,88,45]
bubbleSort(array: &array)
print(array)

func quickSort2(array: ArraySlice<Int>) {

}

//Alexander Khartanovich
func quickSort(arr: inout Array<Int>, left: Int, right: Int) {

    func swap(arr: inout Array<Int>, indexA: Int, indexB: Int){
        let temp = arr[indexA]
        arr[indexA] = arr[indexB]
        arr[indexB] = temp
    }

    let pivot = arr[(right - left) / 2 + left]
    var L: Int = left
    var R: Int = right
    while (L < R) {
        while (arr[L] < pivot) {
            L += 1
        }

        while (arr[R] > pivot) {
            R -= 1
        }

        if (L <= R) {
            swap(arr: &arr, indexA: L, indexB: R)
            L += 1
            R -= 1
        }

    }
    if (R > left) {
        quickSort(arr: &arr, left: left, right: R)
    }
    if (L < right) {
        quickSort(arr: &arr, left: L, right: right)
    }
}
var array3 = [111,0,12,23,234,23,25,4537,58,769,789,6,53,2,1,0,111,44,88,45]
quickSort(arr: &array3, left: array3.startIndex, right: array3.endIndex-1)

//
func quickSort3(array: inout [Int], startIndex: Int? = nil, endIndex: Int? = nil) {
    let startIndex = startIndex ?? array.startIndex
    let endIndex = endIndex ?? array.endIndex - 1
    guard array[startIndex...endIndex].count > 1 else { return }

    var i = startIndex
    var j = endIndex
    let pivot = array[j]

    guard i < j else { return }

    while i < j {

        while array[i] <= pivot, i < endIndex {
            i += 1
        }

        while array[j] > pivot, j > 0 {
            j -= 1
        }

        if i < j {
            //swap
            guard i < array.count, j < array.count else { break }
            array.swapAt(i, j)
        }
    }

    // sort parts:
    quickSort3(array: &array, startIndex: startIndex, endIndex: i-1)

    quickSort3(array: &array, startIndex: i, endIndex: endIndex)
}

var array1 = [111,0,12,23,234,23,25,4537,58,769,789,6,53,2,1,0,111,44,88,45]
quickSort3(array: &array1)

// Merge sort
let arr1 = [1, 7, 17, 25, 38]
let arr2 = [2, 5, 17, 29, 31]

func mergedArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
    var result = [Int]()
    var i = 0
    var j = 0

    while i < array1.count && j < array2.count {
        if array1[i] < array2[j] {
            result.append(array1[i])
            i += 1
        } else {
            result.append(array2[j])
            j += 1
        }
    }
    while i < array1.count {
        result.append(array1[i])
        i += 1
    }
    while j < array2.count {
        result.append(array2[j])
        j += 1
    }
    return result
}

let merged = mergedArrays(arr1, arr2)

// linked list

struct LinkedListSalad<T> {
    var head: SaladListNode<T>
    init(head: SaladListNode<T>) {
        self.head = head
    }
}
indirect enum SaladListNode<T> {
    case ingredient(element: T, next: SaladListNode<T>)
    case end
}
let inridos4 = SaladListNode.ingredient(element: "Mayonez", next: .end)
let inridos3 = SaladListNode.ingredient(element: "Kolbosa", next: inridos4)
let inridos2 = SaladListNode.ingredient(element: "Kartoshka", next: inridos3)
let inridos1 = SaladListNode.ingredient(element: "Goroshek", next: inridos2)
let Salad = LinkedListSalad(head: inridos1)

// Binary tree

indirect enum Tree {
    case Empty
    case Node(Int, left: Tree, right: Tree)
}

func insert(newValue: Int) -> Tree {
    switch self {

    case .Empty:
        return Tree.Node(newValue, left: Tree.Empty, right: Tree.Empty)
    case let .Node(value, left, right):
        if newValue > value {
            return Tree.Node(value: value, left: left, right: right.insert(newValue))
        } else {
            return Tree.Node(value: value, left: left.insert(newValue), right: right)
        }
    }
}
