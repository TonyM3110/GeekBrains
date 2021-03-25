
//

import Foundation

// Квадратное уравнение
let a: Float = 1
let b: Float = 14
let c: Float = 36
var x1: Int
var x2 : Int
var discriminant: Float
var d: Float
d = b * b - (4 * a * c)
discriminant = sqrt(d)
print ("Дискриминант = ", d)
if (d < 0){
    print ("Неверное значение")
} else if (d == 0){
    let x1 = (-b + d) / (2 * a)
    print ("x1 = ", x1)
}else if (d > 0){
    x1 = Int((-b + d) / (2 * a))
    x2 = Int((-b - d) / (2 * a))
    print ("x1 = ", x1)
    print ("x2 = ", x2)
}

// Треугольник
let kateta: Int = 3
let katetb: Int = 4
var squ: Float
var p: Float
var gipotenusa: Float
gipotenusa = sqrt(Float(kateta * kateta + katetb * katetb) )
print ("Гипотенуза = ", gipotenusa)
p = Float(kateta + katetb) + gipotenusa
print ("Периметр = ", p)
squ = 0.5 * Float((kateta * katetb))
print ("Площадь треугольника = " , squ)


//Вклад

var summ:Float = 150000
var per:Float = 10
per = per / 100
var year1 = summ + (summ * per)
var year2 = year1 + (year1 * per)
var year3 = year2 + (year2 * per)
var year4 = year3 + (year3 * per)
var year5 = year4 + (year4 * per)
var year = 1
var time = [year1, year2, year3, year4, year5]
for i in time{
print("Через \(year) года сумма сумма составит \(i)")
    year += 1
}








