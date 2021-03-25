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
print ("Массив из четных числел:", array2)

// Пятое задание

func numFibArray(_ n: Int) -> [Double] {
    var numFibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        numFibonacci.append(numFibonacci[i - 1] + numFibonacci[i - 2])
    }
    return numFibonacci
}
print(numFibArray(50))


// Шестое задание

func SimpNumb (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2 ..< num {
        if num % i == 0 {
            return false
        }
    }
    return true
}
func SimpNumbArray () -> [Int] {
    var Numb = [Int]()
    var i = 2
    while Numb.count < 100 {
        if SimpNumb(num: i) {
            Numb.append(i)
        }
        i += 1
    }
    
    return Numb
}
print (SimpNumbArray())
