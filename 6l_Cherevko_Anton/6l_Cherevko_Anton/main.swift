//Домашняя работа 6

import Foundation

enum MyGarage {
    case Mercedes, BMW, Range_Rover, Porshe, Audi
}

protocol SizeOfMyGarage{
    var numberOfCars: Int { get set}
    
}

struct Car: SizeOfMyGarage {
    var car: MyGarage
    var numberOfCars: Int
}

extension Car: CustomStringConvertible{
    var description: String {
        return "В моем гараже сейчас \(numberOfCars)  \(car)"
    }
}
   

struct Queue<T: SizeOfMyGarage> {
    private var elements: [T] = []

    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T? {
        return elements.removeLast()
    }
    
    var sizeOfGarage : Int{
        var numberOfCars = 0
        for element in elements {
            numberOfCars += element.numberOfCars
        }
        return numberOfCars
    }
    subscript (elements: Int ...) -> Int{
        var numberOfCars = 0
        for index in elements where index < self.elements.count {
            numberOfCars += self.elements[index].numberOfCars
        }
        return numberOfCars
    }

}

extension Queue{
    func filtred(predicate: (T) -> Bool) -> [T] {
        var myArr = [T]()
        for element in elements {
            if predicate(element){
                myArr.append(element)
            }
        }
        return myArr
    }
}


var garage = Queue<Car>()

garage.enqueue(element: Car(car: .Mercedes, numberOfCars: 1))
garage.enqueue(element: Car(car: .Range_Rover, numberOfCars: 3))
garage.enqueue(element: Car(car: .Porshe, numberOfCars: 5))
garage.enqueue(element: Car(car: .Audi, numberOfCars: 7))


let myGarageCout = garage.filtred(predicate: {$0.numberOfCars >= 3})
print(myGarageCout)
