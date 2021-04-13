//Домашняя работа 5

import Foundation

enum doors{
    case open, close
}


protocol Car{
    func posibilityOfCar() -> String
    var brandName: String {get}
    var modelName: String {get}
    var dateOfRelease: Int {get}
    var cost: Int {get set}
    var doorsSate: doors {get set}
    
}
extension Car{
    mutating func setCostOfCar (cost: Int){
        self.cost = cost
    }
    mutating func stateOfDoors (doorState: doors){
        self.doorsSate = doorsSate
    }
}

class sportCar: Car{
    var gasTank = 0
    func posibilityOfCar() -> String{
        if gasTank <= 0{
                    return "Ваш бензобак пуст, заправьтесь!"
                } else {
                    return "Отлично! Погнали"
                }
    }
    func aboutCar() -> String {
        return "\(posibilityOfCar()). Это \(brandName), \(modelName), \(dateOfRelease) года выпуска. Ее стоимость \(cost) долларов и ее двери в данный момент \(doorsSate), ее максимальная скорость \(maxSpeed) км/ч и эта машина \(typeOfCar))!"
    }
    var brandName: String = ""
    var modelName: String
    var dateOfRelease: Int
    var cost: Int
    var doorsSate: doors
    var maxSpeed: Int
    var typeOfCar: String

    
    init(brandName: String, modelName:String, dateOfRelease: Int, cost: Int, doorsSate: doors, maxSpeed: Int, typeOfCar: String, gasTank: Int){
        self.brandName = brandName
        self.modelName = modelName
        self.dateOfRelease = dateOfRelease
        self.cost = cost
        self.doorsSate = doorsSate
        self.maxSpeed = maxSpeed
        self.typeOfCar = typeOfCar
        self.gasTank = gasTank
        

    }
}
extension sportCar: CustomStringConvertible{
    var description: String {
        return String(describing: brandName)
    }
}

let Ferrari = sportCar (brandName: "Ferrari", modelName: "F12 Berlinetta", dateOfRelease: 2012, cost: 300000, doorsSate: .open, maxSpeed: 320, typeOfCar: "Супер Кар", gasTank: 0)
let Mercedes = sportCar (brandName: "Mercedes", modelName: "GT63 AMG", dateOfRelease: 2017, cost: 150000, doorsSate: .close, maxSpeed: 280, typeOfCar: "Спорт Кар", gasTank: 100)
print (Ferrari.aboutCar())
print (Mercedes.aboutCar())


class trunkCar: Car{
    var gasTank = 0
    func posibilityOfCar() -> String{
        if gasTank <= 0{
                    return "Ваш бензобак пуст, заправьтесь!"
                } else {
                    return "Отлично! Погнали"
                }
    }
    func aboutCar() -> String {
        return "\(posibilityOfCar()). Это \(brandName), \(modelName), \(dateOfRelease) года выпуска. Ее стоимость \(cost) долларов и ее двери в данный момент \(doorsSate), ее максимальная грузоподъемность \(maxTrunkVolume) кг и максимальная дистанция пробега \(maxDistance) км)!"
    }
    var brandName: String = ""
    var modelName: String
    var dateOfRelease: Int
    var cost: Int
    var doorsSate: doors
    var maxTrunkVolume: Int
    var maxDistance: Int
    
    init(brandName: String, modelName:String, dateOfRelease: Int, cost: Int, doorsSate: doors, maxDistance: Int, maxTrunkVolume: Int, gasTank: Int){
        self.brandName = brandName
        self.modelName = modelName
        self.dateOfRelease = dateOfRelease
        self.cost = cost
        self.doorsSate = doorsSate
        self.maxTrunkVolume = maxTrunkVolume
        self.maxDistance = maxDistance
        self.gasTank = gasTank
        

    }
}
extension trunkCar: CustomStringConvertible{
    var description: String {
        return String(describing: brandName)
    }
}

let DAF = trunkCar (brandName: "DAF", modelName: "XDF-12", dateOfRelease: 2001, cost: 50000, doorsSate: .open, maxDistance: 10000, maxTrunkVolume: 30000, gasTank: 0)
let Kamaz = trunkCar (brandName: "Mercedes", modelName: "GT63 AMG", dateOfRelease: 2017, cost: 150000, doorsSate: .close, maxDistance: 12000, maxTrunkVolume: 35000, gasTank: 300)

print (DAF.aboutCar())
print (Kamaz.aboutCar())



