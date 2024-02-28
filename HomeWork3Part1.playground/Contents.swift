import Foundation

/*
 
 Домашнє завдання 3
 
 Частина 1
 
 */

/*
 
 Розділ 1 - Потік керування
 
 - Цикли
 
 */

// Псевдонім для зберігання деталей товару
//typealias ProductInfo = (String, Double, String, String, String)
typealias ProductInfo = (productName: String, price: Double, currency: String, socet: String, processor: String)

// Користувач в інтернет-магазині додав наступні товари у кошик,
// але ще не визначився, яку саме відеократу придбати:
//let cart: [ProductInfo] = [
let carts: [ProductInfo] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socet: "sAM4", processor: "AMD")
]

/*
 
 Пункт 1.1
 
 Викороистовуючи цикил For виведіть у консоль усю інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 Сокет: значення, Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
     Сокет: s1151, Процессор: Intel
    ------------------------------------------------------
 */

let productsCount = carts.count - 1

for index in 0 ... productsCount {
    
    //(productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel")
    //let item = (productName: carts[index].0, price: cart[index].1, currency: cart[index].2, socet: cart[index].3, processor: cart[index].4)
    let item = carts[index]
    
    let s1 = "------------------- \(index + 1) -------------------------------"
    let s2 = " Назва товару: \(item.productName), Ціна: \(item.price) \(item.currency)"
    let s3 = " Сокет: \(item.socet), Процессор: \(item.processor)"
    let s4 = "------------------------------------------------------"
    
    print(s1, s2, s3, s4, "\n", separator: "\n")
}

/*
 
 Пункт 1.2
 
 Викороистовуючи цикил For in виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD
     Процессор: Intel
    ------------------------------------------------------
 */

var index = 1

for cart in carts {
    
    let s1 = "------------------- \(index) -------------------------------"
    let s2 = " Назва товару: \(cart.productName)"
    let s3 = " Процессор: \(cart.processor)"
    let s4 = "------------------------------------------------------"
    
    print(s1, s2, s3, s4, "\n", separator: "\n")
    index += 1
}

/*
 
 Пункт 1.3
 
 Викороистовуючи цикил While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Ціна: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Ціна: 1717.00 ₴
    ------------------------------------------------------
 */

var indexWhile = 0

while indexWhile < carts.count {
    
    let item = carts[indexWhile]
    
    let s1 = "------------------- \(indexWhile + 1) -------------------------------"
    let s2 = " Назва товару: \(item.productName)"
    let s3 = " Ціна: \(item.price) \(item.currency)"
    let s4 = "------------------------------------------------------"
    
    print(s1, s2, s3, s4, "\n", separator: "\n")
    indexWhile += 1
}

/*
 
 Пункт 1.4
 
 Викороистовуючи цикил Repeate While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Сокет: s1151
    ------------------------------------------------------
 */

var indexRepeateWhile = 0

repeat {
    
    let item = carts[indexRepeateWhile]
    
    let s1 = "------------------- \(indexRepeateWhile + 1) -------------------------------"
    let s2 = " Назва товару: \(item.productName)"
    let s3 = " Сокет: \(item.socet)"
    let s4 = "------------------------------------------------------"
    
    print(s1, s2, s3, s4, "\n", separator: "\n")
    indexRepeateWhile += 1
    
} while indexRepeateWhile < carts.count

/*
 
 Розділ 1 - Потік керування
 
 - If / if else
 
 */

/*
 
 Пункт 1.5
 
 Викороистовуючи будь-який з циклів та умовні оператори if else
 виведіть у консоль тільки ті товари
 - ціна яких менша 5000.00 грн.
 - значення socket є s1151
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    Сокет: s1151
    ------------------------------------------------------
 */

var indexP = 1

for cart in carts {
    
    if cart.price < 5000 && cart.socet == "s1151" {
        
        let s1 = "------------------- \(indexP) -------------------------------"
        let s2 = " Назва товару: \(cart.productName)"
        let s3 = " Сокет: \(cart.socet)"
        let s4 = "------------------------------------------------------"
        
        print(s1, s2, s3, s4, "\n", separator: "\n")
        indexP += 1
    }
}

/*
 
 Розділ 1 - Потік керування
 
 - Switch
 
 */

/*
 
 Пункт 1.6
 
 Викороистовуючи будь-який з циклів та умовні оператор switch
 додати перевірку через case на відповідність процесору товару AMD чи Intel,
 значення процесору брати з опису товару
 (дивись Примітка після прикладу приклад switch) і
 вивести у консоль наступну інформацію про всі товари
 - назва товару
 - ціна товару
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ------------------------------------------------------

 * Примітка
    
     let processorStringValue = "Значення процесору з продукту"
 
     switch processorStringValue {
     case "Intel":
         // друк інформації для товару з процесором Intel
     case "AMD":
         // друк інформації для товару з процесором AMD
     default:
         // друк пустої строки
     }
    
 */

var indexS = 1

for cart in carts {
    
    let processorStringValue = cart.processor
    
    let s1 = "------------------- \(indexS) -------------------------------"
    let s2 = " Назва товару: \(cart.productName), Ціна: \(cart.price) \(cart.currency)"
    let s3 = "------------------------------------------------------"

    switch processorStringValue {
    case "Intel":
        print("- друк інформації для товару з процесором Intel")
        print(s1, s2, s3, "\n", separator: "\n")
    case "AMD":
        print("- друк інформації для товару з процесором AMD")
        print(s1, s2, s3, "\n", separator: "\n")
    default:
        print("- друк пустої строки")
        print("\n")
    }
    
    indexS += 1
}

/*
 
 Розділ 2 - Функції
 
 */

/*
 
 Пункт 2.1
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію без параметрів,
 яка виведе інформацю про товари з кошика тільки з процесором Inetel
 у консоль у наступному форматі:
 
 ------------------- Inetel -------------------------------
 1 Назва товару: значення товару
 2 Назва товару: значення товару
 3 Назва товару: значення товару
 ...
 n Назва товару: значення товару // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Inetel -------------------------------
    1 Назва товару: ASRock H310CV-HD
    2 Назва товару: Asus Prime H310M-E R2.0
    ...
    n Назва товару: Asus WS C246 Pro // n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її
 
 */

func printOnlyIntel() {
    var index = 1
    print("------------------- Intel -------------------------------")
    
    for cart in carts {
        if cart.processor == "Intel" {
            print("\(index). Назва товару: \(cart.productName)")
            index += 1
        }
    }
}

printOnlyIntel()

/*
 
 Пункт 2.2
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію з параметром максимальна ціна (maxPrice: Double),
 яка виведе інформацю про товари з кошика тільки з ціною, яка менше за значення maxPrice
 у консоль у наступному форматі:
 
 ------------------- Товари з ціною менше значення -------------------------------
 1 Назва товару: значення, Ціна: знак валюти і значення
 2 Назва товару: значення, Ціна: знак валюти і значення
 3 Назва товару: значення, Ціна: знак валюти і значення
 ...
 n Назва товару: значення, Ціна: знак валюти і значення // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Товари з ціною менше 4500.00 -------------------------------
    1 Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ...
    n Назва товару: Asus WS C246 Pro, Ціна: 2299.0// n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її з максимальним значенням на свій розсуд для перевірки
 
 */

print("\n")

func printOnlyForPriceLess(maxPrice: Double) {
    var index = 1
    print("------------------- Товари з ціною менше \(String(format: "%.2f", maxPrice)) -------------------------------")
    
    for cart in carts {
        if cart.price < maxPrice {
            print("\(index). Назва товару: \(cart.productName), Ціна: \(String(format: "%.2f", cart.price)) \(cart.currency)")
            index += 1
        }
    }
}

printOnlyForPriceLess(maxPrice: 3000)

/*
 
 Пункт 2.3
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію яка приймає параметром тип процесору (processor: String),
 та повертає найдорожчий товар (тобто поіністю елемент типу ProductInfo) з вказаним процесором processor
 
 результат записати у константу та вивести у консоль у форматі:
 ------------------- Найдорожчий товар за процесором значення -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
 
     ------------------- Найдорожчий товар за процесором Intel -------------------------------
     Назва товару: Asus WS C246 Pro, Ціна: 10979.00 ₴
     -----------------------------------------------------------------------------------------
 
 */

print("\n")

func mostExpensive(for processorType: String) -> ProductInfo {
    
    var highestPrice = 0.0
    //var mostExpensiveItem = carts[0]
    var mostExpensiveItem = ("", 0.0, "", "", "")
    
    for cart in carts {
        if cart.processor == processorType && cart.price > highestPrice {
            mostExpensiveItem = cart
        }
    }
    
   return mostExpensiveItem
}

let mostExpProd = mostExpensive(for: "Intel")
//print("\(mostExpProd)")

let s1 = " ------------------- Найдорожчий товар за процесором \(mostExpProd.processor) -------------------------------"
let s2 = " Назва товару: \(mostExpProd.productName), Ціна: \(String(format: "%.2f", mostExpProd.price)) \(mostExpProd.currency)"
let s3 = "-----------------------------------------------------------------------------------------"

print(s1, s2, s3, "\n", separator: "\n")

/*
 
 Розділ 3 - Перечислення / Enum
 
 */

/*
 
 Пункт 3.1
 
 Зарезервувати (описати) enum для типу процесора ProcessorType, який матиме 2 випадки (cases) з тестовим описом
 - intel = "Intel"
 - amd = "AMD"
 
 створити змінну типу створенного enum з якимось із значень
 
 */

enum ProcessorType: String {
    case intel = "Intel"
    case amd = "AMD"
}

var procType: ProcessorType = .intel

print(procType)
print("\n")

/*
 
 Пункт 3.2
 
 Зарезервувати (описати) enum для валюти (Currency), який матиме 3 випадки (cases) з тестовим описом
 - uah = "UAH"
 - usd = "USD"
 - eur = "EUR"
 
 створити змінну типу створенного enum з якимось із значень
 
 */

enum Currency: String {
    case uah = "UAH"
    case usd = "USD"
    case eur = "EUR"
}

var cur: Currency = .uah

print(cur)
print("\n")

/*
 
 Розділ 4 - Структури і класи
 
 */

/*
 
 Пункт 4.1

 Описати структуру MotherBoard (Материньска плата)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - socet типу String
 - processor типу ProcessorType (enum, оголошений у розділі Перечислення)
 
 створити змінну типу MotherBoard і спробувати поміняти їй інші значення
 
 */

struct MotherBoard {
    var socet = "sAM5"
    var processor: ProcessorType = .amd
}

var motherBoard = MotherBoard()
print("\(motherBoard.socet) \(motherBoard.processor)")

motherBoard.socet = "s1700"
motherBoard.processor = .intel
print("\(motherBoard.socet) \(motherBoard.processor)")

print("\n")

/*
 
 Пункт 4.2

 Описати клас Product (опис продукту)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - name типу String
 - price типу Double
 - currency типу Currency (використати enum з розділу 3 пункт 3.2)
 - motherBoard типу MotherBoard (використати структуру MotherBoard з розділу 4 пункт 4.1)
 
 створити змінну типу Product і спробувати поміняти їй інші значення
 
 */

class Product {
    var name = "Asus TUF Gaming B650-Plus Wi-Fi"
    var price = 9799.00
    var currency: Currency = .uah
    var motherBoard: MotherBoard = .init(socet: "sAM5", processor: .amd)
    
    func prtProduct() {
        print("\(product.name) - \(String(format: "%.2f", product.price)) \(product.currency) \("(")\(product.motherBoard.socet), \(product.motherBoard.processor)\(")")")
    }
}

var product = Product()
product.prtProduct()

product.name = "Asus TUF Gaming B760-Plus Wi-Fi D4"
product.price = 299
product.currency = .usd
product.motherBoard = .init(socet: "s1700", processor: .intel)

product.prtProduct()
