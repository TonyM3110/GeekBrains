//домашняя работа 7
// 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.


import Foundation

enum PossibleErrors: Error{
    case notEnoughMoney
    case outOfStock
}

struct Car {
  let price: Int
  var count: Int
}

class autoShop {
    var budget = 1000000
    var carChoice = ["Lada Niva 4x4": Car(price: 600000, count: 10), "Kia Rio": Car(price: 950000, count: 0), "Mercedes C-class": Car(price: 1100000, count: 15) ]
    func buyTheCar( withName: String) throws {
        guard var car = carChoice[withName] else {
            throw PossibleErrors.outOfStock
        }
        guard car.count > 0 else {
            throw PossibleErrors.outOfStock
        }
        guard car.price <= budget else {
            throw PossibleErrors.notEnoughMoney
        }
        
        budget -= car.price
        car.count -= 1
        carChoice[withName] = car
        print ("Мои поздравления, вы купили машину: \(withName)")
    }
}

var carShop = autoShop()

do {
    try carShop.buyTheCar(withName: "Lada Niva 4x4")
} catch PossibleErrors.outOfStock {
    print ("Машины нет в наличии")
} catch PossibleErrors.notEnoughMoney{
    print("К сожалению, у вас не хватает денег")
}
do {
    try carShop.buyTheCar(withName: "Kia Rio")
} catch PossibleErrors.outOfStock {
    print ("Машины нет в наличии")
} catch PossibleErrors.notEnoughMoney{
    print("К сожалению, у вас не хватает денег")
}
do {
    try carShop.buyTheCar(withName: "Mercedes C-class")
} catch PossibleErrors.outOfStock {
    print ("Машины нет в наличии")
} catch PossibleErrors.notEnoughMoney{
    print("К сожалению, у вас не хватает денег")
}
do {
    try carShop.buyTheCar(withName: "Audi A7")
} catch PossibleErrors.outOfStock {
    print ("Машины нет в наличии")
} catch PossibleErrors.notEnoughMoney{
    print("К сожалению, у вас не хватает денег")
}















