// Домашнее задание 3

import Foundation


enum engineState {
    case start, stop
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

struct sportCar {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "Бедый":
            self.color = "Белый"
        case "Черный":
            self.color = "Черный"
        case "Красный":
            self.color = "Красный"
        case "Синий":
            self.color = "Синий"
        default: break
          
        }
    }
    let release : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand) \(model) свободное место в багажнике: \(space)")
            } else { print("У \(brand) \(model) багажник переполнен.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("У \(brand) \(model) двигатель в запущеном состоянии!")
            } else {print("У \(brand) \(model) двигатель в заглушеном состоянии!")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("У \(brand)\(model) окна открыты, будьте осторожжны!")
            } else { print("У \(brand) \(model) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("У \(brand) \(model) багажник пустой")
    }
}

struct trunkCar {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "Белый":
            self.color = "Белый"
        case "Черный":
            self.color = "Черный"
        case "Красный":
            self.color = "Красный"
        case "Синий":
            self.color = "Синий"
        default: break
            
        }
    }
    let release : Int
    var trailerVolume : Double {
        willSet {
            if (trunkState == .empty) && (trailerVolume > 0) && (trailerVolume != 0) && (newValue < trailerVolume) {
                let space = trailerVolume - newValue
                print ("\(brand)\(model) свободное место в багажнике: \(space)")
            } else { print("У \(brand) \(model) кузов переполнен.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("У \(brand)\(model) двигатель в запущеном состоянии!")
            } else {print("У \(brand) \(model) двигатель в заглушеном состоянии!")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("У \(brand)\(model) окна открыты, будьте осторожжны!")
            } else { print("У \(brand) \(model) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("У \(brand) \(model) багажник пустой")
    }
}


var car1 = sportCar(brand: "BMW", model: "x5m", color: "Зеленый", release: 2020, trunkVolume: 600.0 , engineState: .stop, windowState: .open, trunkState: .empty)

var car2 = sportCar(brand: "Mercedes-Benz", model: "e63s", color: "Розовый", release: 2020, trunkVolume: 550.0, engineState: .stop, windowState: .close, trunkState: .empty)

var car3 = sportCar(brand: "Audi", model: "A7", color: "Синий", release: 2016, trunkVolume: 425.0, engineState: .start, windowState: .open, trunkState: .full)

var truck1 = trunkCar(brand: "Mercedes-Benz", model: "Actros", color: "Неоновый", release: 2020, trailerVolume: 120000.0, engineState: .stop, windowState: .open, trunkState: .full)

var truck2 = trunkCar(brand: "Volvo", model: "FH I-Save", color: "Серо-Буро-Малиновый", release: 2019, trailerVolume: 172500.0, engineState: .start, windowState: .close, trunkState: .empty)

var truck3 = trunkCar(brand: "DAF", model: " XF 105", color: "Оранжевый", release: 2007, trailerVolume: 300000.0, engineState: .stop, windowState: .open, trunkState: .full)


car1.engineState = .start
car1.trunkVolume = 340.0
car1.changeColor(c: "Желтый")
car2.trunkVolume = 350.0
car2.trunkVolume = 80.9
car2.windowState = .open
car2.changeColor(c: "Золотой")
car3.changeColor(c: "Бирюзовый")
car3.trunkState = .empty

truck1.engineState = .start
truck1.windowState = .open
truck2.engineState = .stop
truck2.trailerVolume = 7301649
truck3.changeColor(c: "Серый")


print()
print ("Информация о машине - Марка: \(car1.brand), Модель: \(car1.model), Год выпуска: \(car1.release), Цвет: \(String(describing: car1.color)), свободное место в багажнике: \(car1.trunkVolume), состояние двигателя: \(car1.engineState)")
print()
print ("Информация о машине - Марка: \(car2.brand), Модель: \(car2.model), Год выпуска: \(car2.release), Цвет: \(String(describing: car2.color)), свободное место в багажнике: \(car2.trunkVolume), состояние двигателя: \(car1.engineState)")
print ()
print ("Информация о машине - Марка: \(car3.brand), Модель: \(car3.model), Год выпуска: \(car3.release), Цвет: \(String(describing: car3.color)), свободное место в багажнике: \(car3.trunkVolume), состояние двигателя: \(car3.engineState)")
print()
print ("Информация о машине - Марка: \(truck1.brand), Модель: \(truck1.model), Год выпуска: \(truck1.release), Цвет: \(String(describing: truck1.color)), свободное место в багажнике: \(truck1.trailerVolume), состояние двигателя: \(truck1.engineState)")
print()
print ("Информация о машине - Марка: \(truck2.brand), Модель: \(truck2.model), Год выпуска: \(truck2.release), Цвет: \(String(describing: truck2.color)), свободное место в багажнике: \(truck2.trailerVolume), состояние двигателя: \(truck2.engineState)")
print()
print ("Информация о машине - Марка: \(truck3.brand), Модель: \(truck3.model), Год выпуска: \(truck3.release), Цвет: \(String(describing: truck3.color)), свободное место в багажнике: \(truck3.trailerVolume), состояние двигателя: \(truck3.engineState)")

print ("==========")


// Другое решение ( немного не по заданию). Я попробовал через классы
    class Car{
    var brand: String
    var model: String
    var color: String
    var engineState: String
    var trunkState: String
    var releaseDate: Int
    var trunkVolume: Int
    var windowState: String?
    
    
    func AboutCar () -> String{
        return "Машина \(brand), \(model), Цвет: \(color), Дата выпуска: \(releaseDate), объем багажника: \(trunkVolume). Положение окон \(windowState!),  Состояние двигателя: \(engineState) и стостояние багажника \(trunkState)"
       
    }
    init (brand: String, model:String, color:String, engineState: String, trunkState:String, releaseDate: Int, trunkVolume: Int, windowState: String){
        self.brand = brand
        self.model = model
        self.color = color
        self.engineState = engineState
        self.trunkState = trunkState
        self.releaseDate = releaseDate
        self.trunkVolume = trunkVolume
        self.windowState = windowState
    }
}


class SportCar: Car{
   
}
var sportCar1 = SportCar (brand: "BMW", model: "X5M",  color: "white", engineState: "start", trunkState: "full", releaseDate: 2020, trunkVolume: 600, windowState: "close")

var sportCar2 = SportCar (brand: "Mercedes-Benz", model: "e63s", color: "Black", engineState: "stop", trunkState: "empty", releaseDate: 2019, trunkVolume: 580, windowState: "close")

var sportCar3 = SportCar (brand: "Audi", model: "A7S",  color: "Bluse", engineState: "start", trunkState: "full", releaseDate: 2017, trunkVolume: 599, windowState: "close")

sportCar1.AboutCar()
sportCar2.AboutCar()
sportCar3.AboutCar()
print ("Информация о машине:", sportCar1.AboutCar())
print ()
print ("Информация о машине:", sportCar2.AboutCar())
print ()
print ("Информация о машине:", sportCar3.AboutCar())
print ()

class TrunkCar: Car{
   
}
var TrunkCar1 = TrunkCar (brand: "Volvo", model: "FH I-Save",  color: "Розовый", engineState: "заглушен", trunkState: "пустой", releaseDate: 1996, trunkVolume: 30000, windowState: "закрыты")

var TrunkCar2 = TrunkCar (brand: "Mercedes-Benz", model: "Actros", color: "Красный", engineState: "запущен", trunkState: "полный", releaseDate: 2006, trunkVolume: 120000, windowState:"закрыты")

var TrunkCar3 = TrunkCar (brand: "DAF", model: "XF 105",  color: "Серый", engineState: "запущен", trunkState: "полный", releaseDate: 2001, trunkVolume: 25000, windowState: "открыты")

TrunkCar1.AboutCar()
TrunkCar2.AboutCar()
TrunkCar3.AboutCar()
print ("Информация о грузовике:",TrunkCar1.AboutCar())
print ()
print ("Информация о грузовике:",TrunkCar2.AboutCar())
print ()
print ("Информация о грузовике:",TrunkCar3.AboutCar())



