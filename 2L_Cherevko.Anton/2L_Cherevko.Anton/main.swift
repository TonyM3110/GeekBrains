// Домашняя работа 2


import Foundation

// Первое задание
chet (value: 96)
func chet (value: Int) {
    let x1 = value
    let x2 = x1%2
    _ = x2 == 0 ? print ("Это четное число ") : print ("Это нечетное число")
}
chet1 (value: 77)
func chet1 (value: Int) {
    let x1 = value
    let x2 = x1%2
    _ = x2 == 0 ? print ("Это четное число ") : print ("Это нечетное число")
}


// Второе задание

three (value: 96)
func three (value: Int) {
    let x1 = value
    let x2 = x1%3
    _ = x2 == 0 ? print ("Это число делится без остака на 3") : print ("Это число не делится без остака на 3")
}
three1 (value: 77)
func three1 (value: Int) {
    let x1 = value
    let x2 = x1%3
    _ = x2 == 0 ? print ("Это число делится без остака на 3") : print ("Это число не делится без остака на 3")
}

// Третье задание
var array1 = [Int] ()
var lengh1 = 0
while lengh1 < 100 {
    array1.append (lengh1+1)
    lengh1 = lengh1 + 1
    // lengh1 += 1
    print (lengh1)
}

// Четвертое задание
var array2 = [Int] ()
var lengh2 = 0
while lengh2 < 100 {
    array2.append (lengh2+1)
    lengh2 += 1
    for value  in array2 {
        if ((value % 2) != 0)  {
            array2.remove(at: array2.firstIndex(of: value)!)
        }
    }
    
}
print ("Массив из четных числел", array2)

// Пятое задание
var numFibArray = [Double]()
numFibArray.append(0)
var 

func numFib (x:Int)



