import UIKit

// Потік керування

// Цикл For
print("\nЦикл For:\n")
let products: [String] = [
    "Молоко", "Печиво", "Кава", "Апельсин", "Яблука"
]

// for in range hard code
print("\nfor in_range hard code:\n")
for productIndex in 0 ... 4 {
    print(products[productIndex])
}

// for in range array count
print("\nfor in_range array count:\n")
for productIndex in 0 ..< products.count {
    print(products[productIndex])
}

// Ознайомитися:
// метод половинного ділення
// книга алгоритми і структури даних

// randomIndex
print("\nrandomIndex:\n")
for _ in 0 ..< products.count {
    let randomIndex = Int.random(in: 0 ..< products.count)
    print(products[randomIndex])
}

// використали індекс як лічильник
print("\nIndex as a counter:\n")
for productIndex in 0 ..< products.count {
    print("\(productIndex + 1) \(products[productIndex])")
}

// For in
print("\nFor in:\n")

for productItem in products {
    print(productItem)
}

// For in enumerated
print("\nFor in enumerated:\n")

for (index, item) in products.enumerated() {
    print("\(index + 1) \(item)")
}



// While <condition>
print("\nWhile:\n")
//
//while true {
//    print("\(products[0])")
//}
//
var whileCounter = 0
var whileState = true

//while whileCounter < products.count {
//    print(products[whileCounter])
//    whileCounter += 1
//}

while whileState {
    print(products[whileCounter])
    whileCounter = whileCounter + 1
    if whileCounter >= (products.count) {
        whileState = false
    }
}

while whileCounter < products.count {
    print("\(products[whileCounter])")
    whileCounter = whileCounter + 1
}

//repet while

print("\nRepeat while:\n")

var repeatWhileCounter = 0

repeat {

    print(products[repeatWhileCounter])
    repeatWhileCounter += 1
} while repeatWhileCounter < products.count


// if else
print("\nif else:\n")
let weatherTemp: Double = 1.5

if weatherTemp > 1.0 {
    print("nice weather")
} else if weatherTemp < -1.0 {
    print("pretty cold")
} else {
    print("almost zero")
}


// Switch
print("\nSwitch:\n")

let weatherIndex = 7

if weatherIndex == 3 {
    print("🌧️")
} else if weatherIndex == 7 {
    print("⛅️")
}

switch weatherIndex {
case 0: print("🌧️")
case 1: print("⛅️")
case -5: print("❄️")
default: print("☀️")
}

// Функції
print("\n_______________ Funtions_________________\n")

func printWeatherInfo() {
    let weatherState = 10
    
    switch weatherState {
    case 0: print("🌧️")
    case 1: print("⛅️")
    case -5: print("❄️")
    default: print("☀️")
    }
}

printWeatherInfo()
printWeatherInfo()


print("\nFuntion with parametr:\n")
func printWeatherInfoWith(temp: Int) {
    switch temp {
    case 0: print("🌧️")
    case 1: print("⛅️")
    case -5: print("❄️")
    default: print("☀️")
    }
}

printWeatherInfoWith(temp: 0)
printWeatherInfoWith(temp: -5)
printWeatherInfoWith(temp: 1)
printWeatherInfoWith(temp: 7)


print("\nFuntion that give back result:\n")

func getDescription(for temp: Int) -> String {
    
    let prefix = "Weather is "
    var result = ""
    
    switch temp {
    case 0:
        result = prefix + "🌧️"
    case 1:
        result = prefix + "⛅️"
    case -5:
        result = prefix + "❄️"
    default:
        result = "no info"
    }
    return result
}


let someResult = getDescription(for: -50)
print(someResult)

let anotherCityTempInfo = getDescription(for: 32)
print(anotherCityTempInfo)


print("\n_______________ Enum_______________\n")

print("\nEnum:\n")

//enum TemperatureType: String {
//    case kelvin = "K"
//    case fahrenheit = "F"
//    case celsius = "C"
//}

enum WeatherType {
    case sun
    case rain
    case snow
}

var weatherType: WeatherType = .sun

func printEmoji(for type: WeatherType) {
    
    switch type {
    case .rain:
        print("🌧️")
    case .snow:
        print("❄️")
    case .sun:
        print("☀️")
    }
}

printEmoji(for: weatherType)


print("\n_______________ Struct_Vale type_______________\n")
print("\nStruct:\n")

struct WeatherInfo {
    var temp: Double //= 0.0
    var icon: String //=  ""
}

var weather: WeatherInfo = WeatherInfo(temp: 15.0, icon: "🌤️") //  WeatherInfo() - такий запис це як ініціалізація, виділення памєяті для збереженння данних

weather.temp = 13.0
weather.icon = "☀️"

struct User {
    var fiestName = ""
    var lastName = ""
    var eMail = ""
    var age: UInt = 0
    
    func isAdult() -> Bool {
        return age < 21
    }
}

var user1 = User()

user1.age = 12
user1.fiestName = "John"
user1.lastName = "Wick"
user1.eMail = "sdasds@dgfd.com"


print(user1)
print(user1.isAdult())

var user2 = user1
user2.age = 44
user1
user2

// class - referense type
print("\n_______________ Class_Referense type_______________\n")
print("\nClass:\n")

class Person {
    var fiestName = ""
    var lastName = ""
    var eMail = ""
    var age: UInt = 0
    
    func isAdult() -> Bool {
        return age < 21
    }
}

let person1 = Person()
person1.eMail = "sdfsd@dfvfd.com"
person1.fiestName = "fdf"
person1.lastName = "gdg"
person1.age = 34

let person2 = person1
person2.age = 44
person1
person2
