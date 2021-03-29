//Домашняя работа 4

import Foundation

enum GasTank{
    case full, empty
}

enum EngineSate {
    case start, stop
}

class Car {
    var brand: String
    var model: String
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
        
    }
}


class SportCar: Car{
    var fuel: GasTank
    var distance: Int
    var roofState: Bool
    func aboutSportCar () -> String{
        return  "Это та самая \(brand), \(model), это машина \(distatnt()) и она \(yesRoofState()), у нее \(fuel1())"
    }
    init(brand: String, model: String, fuel:GasTank, distance: Int, roofState: Bool) {
        self.distance = distance
        self.roofState = roofState
        self.fuel = fuel
        super.init(brand: brand, model: model)
        

    }
    func fuel1() -> String {
        if fuel == .full{
            return "Бензобак полон"
        }else{
            return "Бензобак пуст"
        }
    }
    func distatnt() -> String{
        if distance < 20{
            return  "Новая"
        }else {
            return "Б/У"
        }
    }
    func yesRoofState() -> String{
        if roofState == true {
            
            return "Машина не кабриолет"
        }else{
            return"Машина кабриолет"
        }
    }
    
}

var Ferrari = SportCar (brand: "Ferrari", model: "F12 Berlinetta", fuel: .full, distance: 15, roofState: false)
var Mercedes = SportCar (brand: "Mercedes-Benz", model: "GT63 AMG", fuel: .empty, distance: 100, roofState: true)
Ferrari.aboutSportCar()
Mercedes.aboutSportCar()
print (Ferrari.aboutSportCar())
print (Mercedes.aboutSportCar())


class TrunkCar: Car{
    var engine: EngineSate
    let trailerVolume: Int
    func aboutTrunktCar () -> String{
        return ("Это самый крутой грузовик \(brand), \(model), в данный мосент его \(trailer()) и его двигатель \(engineStatus())")
    }
    init(brand: String, model: String, engine: EngineSate , trailerVolume: Int) {
        self.engine = engine
        self.trailerVolume = trailerVolume
        super.init(brand: brand, model: model)
        

    }
    func trailer() -> String{
        if trailerVolume <= 10000{
            return "Полуприцеп пуст"
        }else {
            return "Полуприцеп полон"
        }
    }
    func engineStatus () -> String{
        if engine == .start {
            return "запущен"
        }else{
            return"заглушен"
        }
    }
    
}

var Volvo = TrunkCar (brand: "Volvo", model: "FH I-Save", engine: .start, trailerVolume: 30000)
var Daf = TrunkCar (brand: "Daf", model: "XF 105", engine: .stop, trailerVolume: 5000)
Volvo.aboutTrunktCar()
Daf.aboutTrunktCar()
print (Volvo.aboutTrunktCar())
print (Daf.aboutTrunktCar ())
