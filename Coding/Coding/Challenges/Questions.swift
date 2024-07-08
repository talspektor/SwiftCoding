//
//  Questions.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Novice Question 1
 What output will be produced by the code below?
 let i = 3
 switch i {
 case 1:
    print("Number was 1")
 case 2:
    print("Number was 2")
 case 3:
    print("Number was 3")
 }
     1.    "Number was 3"  
     2.    This code will not compile  
     3.    This code will compile but crash  
     4.    "Number was 2"  
     5.    Nothing will be output  
     6.    "Number was 1"  
 Question 2
 Given the code below, what data type does i have? let i = 10.2
     1.    Float  
     2.    Double  
     3.    Decimal  
     4.    Single  
     5.    This code will compile but crash  
     6.    Int  
     7.    This code will not compile  
 Question 3
 When this code is executed, what is the value of myStr?
 let myStr: String
 myStr = "shiny"

     1.    ""  
     2.    "nil"  
     3.    This code will compile but crash  
     4.    nil  
     5.    This code will not compile  
     6.    "shiny"  
 Question 4
 When this code is executed, what is the value of the swift string?
 import Foundation
 let ns = NSString("Hello")
 let swift = String(ns)

     1.    "Hello"  
     2.    nil  
     3.    ""  
     4.    This code will not compile  
     5.    5. This code will compile but crash
     Question 5
 What output will be produced by the code below?
 let names = ["Amy", "Rory"]
 for name in names {
    name = name.uppercased()
    print("HELLO, \(name)!")
 }
     1.    Nothing will be output  
     2.    "HELLO, RORY!"  
     3.    "HELLO, AMY!", "HELLO, RORY!"  
     4.    "HELLO, AMY!"  
     5.    This code will not compile  
     6.    This code will compile but crash  
 Question 6
 How many bits are used to store an Int?
     1.    32-bit  
     2.    16-bit  
     3.    It depends on the device  
     4.    64-bit  
 Question 7
 What output will be produced by the code below?
 let names = ["Amy", "Clara"]
 for i in 0 ... names.length {
    print("Hello, \(names[i])!")
 }
     1.    This code will not compile  
     2.    "Hello, Amy!"  
     3.    This code will compile but crash  
     4.    "Hello, Amy!", "Hello, Clara!"  
     5.    "Hello, Clara!"  
 Question 8
 When this code finishes executing, how many strings will the names array contain?
 let names = [String]()
 names.append("Amy")
 names.append("Clara")
 names.append("Rory")

     1.    1  
     2.    This code will compile but crash  
     3.    0  
     4.    This code will not compile  
     5.    3  
     6.    2  
 Question 9
 What output will be produced by the code below?
 let names = ["Chris", "Joe", "Doug", "Jordan"]
 if let name = names[1] {
    print("Brought to you by \(name)")
 }
     1.    "Brought to you by Chris"  
     2.    This code will not compile  
     3.    "Brought to you by Joe"  
     4.    This code will compile but crash  
 Question 10
 What output will be produced by the code below?
 var i = 2
 do { print(i)
    i *= 2
 } while (i < 128)
     1.    This code will compile but crash  
     2.    This code will not compile  
     3.    4, 8, 16, 32, 64  
     4.    4, 8, 16, 32, 64, 128  
     5.    2, 4, 8, 16, 32, 64, 128  
    6. 2, 4, 8, 16, 32, 64
 Question 11
 What output will be produced by the code below?
 for i in 1...3 {
    print(i)
 }
     1.    2, 3  
     2.    2  
     3.    This code will not compile  
     4.    Nothing will be output  
     5.    This code will compile but crash  
     6.    1, 2  
     7.    1, 2, 3  
 Question 12
 What output will be produced by the code below?
 for i in 3...1 {
    print(i)
 }
     1.    1, 2, 3  
     2.    3, 2  
     3.    3, 2, 1  
     4.    This code will compile but crash  
     5.    Nothing will be output  
     6.    1, 2  
     7.    This code will not compile  
     8.    2  
 Question 13
 What output will be produced by the code below?
 class Starship {
    var type: String
    var age: Int
 }
 let serenity = Starship(type: "Firefly", age: 24)
 print(serenity.type)
     1.    ""  
     2.    This code will compile but crash  
     3.    "Serenity"  
     4.    This code will not compile  
     5.    Nothing will be output  
     6.    nil  
     7.    "Firefly"  
 Question 14
 What output will be produced by the code below?
 struct Starship {
    var name: String
 }
 let tardis = Starship(name: "TARDIS")
 var enterprise = tardis
 enterprise.name = "Enterprise"
 print(tardis.name)
     1.    nil  
     2.    This code will compile but crash  
     3.    "Enterprise"  
     4.    "TARDIS"  
     5.    Nothing will be output  
     6.    This code will not compile  
     7.    ""  
 Question 15
 What output will be produced by the code below?
 import Foundation
 let number = 16.0
 print("\(number) squared is \(number * number), and its square
 root is \(sqrt(number))")

     1.    This code will compile but crash  
     2.    This code will not compile  
     3.    "16.0 squared is 256.0, and its square root is 4.0"  
     4.    "16 squared is 256, and its square root is 4"  
     5.    "16 squared is 16 * 16, and its square root is sqrt(16)"  
 Question 16
 What output will be produced by the code below?
 func sayHello(to name: String) -> String {
    return "Howdy, \(name)!"
 }
 print("\(sayHello(to: "Jayne"))")
     1.    "Howdy, Jayne!"  
     2.    This code will compile but crash  
     3.    "sayHello(to: "Jayne")"  
     4.    Nothing will be output  
     5.    "Howdy!"  
     6.    This code will not compile  
 Question 17
 What output will be produced by the code below?
 struct Spaceship {
    var name: String {
       willSet {
          print("I'm called \(newValue)!")
 } }
 }
 var serenity = Spaceship(name: "Serenity")
 serenity.name = "TARDIS"

     1.    This code will compile but crash  
     2.    This code will not compile  
     3.    "I'm called Serenity!"  
     4.    "I'm called Serenity!", "I'm called TARDIS!"  
     5.    "I'm called TARDIS!"  
     6.    Nothing will be output  
 Question 18
 What output will be produced by the code below?
 enum Weather {
    case sunny
 case cloudy
    case windy(speed: Int)
 }
 let today: Weather = .windy(speed: 10)
 switch today {
 case .sunny, .cloudy:
    print("It's not that windy")
 case .windy(let speed) where speed >= 10:
    print("It's very windy")
 default:
    print("It's a bit windy")
 }
     1.    This code will not compile  
     2.    "It's not that windy"  
     3.    Nothing will be output  
     4.    "It's very windy"  
     5.    "It's a bit windy"  
     6.    This code will compile but crash  
 Question 19
 What output will be produced by the code below?
 let names = ["Serenity", "Sulaco", "Enterprise", "Galactica"]
 for name in names where name.hasPrefix("S") {
    print(name)
 }
     1.    "Sulaco"  
     2.    This code will not compile  
     3.    "Serenity"  
     4.    "Serenity", "Sulaco"  
     5.    Nothing will be output  
     6.    "Serenity", "Sulaco", "Enterprise"  
     7.    This code will compile but crash  
 Question 20
 What output will be produced by the code below?
 let oneMillion = 1_000_000
 let oneThousand = oneMillion / 0_1_0_0_0
 print(oneThousand)

     1.    1_0_0_0_0_0_0  
     2.    1_000_000  
     3.    1_0_0_0  
     4.    1000  
     5.    This code will compile but crash  
     6.    1000000  
     7.    This code will not compile  
     8.    Nothing will be output  
 Question 21
 What output will be produced by the code below?
 let names = ["Serenity", "Sulaco", "Enterprise", "Galactica"]
 if let last = names.last {
    print(last)
 }
     1.    "Galactica"  
     2.    Optional("Galatica")  
     3.    This code will compile but crash  
     4.    This code will not compile  
     5.    Optional("Serenity")  
     6.    "Serenity"  
     7.    nil  
     8.    Nothing will be output  
 Question 22
 You are using a method named willThrowAnError(), and it is marked using throws because it will always throw the error "Forbidden". Given this context, what output will be
 produced by the code below?
 do {
    try willThrowAnError()
 } catch {
    print("The error message was: \(error)")
 }
     1.    Nothing will be output  
     2.    This code will compile but crash  
     3.    "The error message was: Forbidden"  
     4.    This code will not compile  
 Question 23
 What output will be produced by the code below?
 var motto = "Bow ties are cool"
 motto.replacingOccurrences(of: "Bow", with: "Neck")
 print(motto)

     1.    "Bow"  
     2.    "Bow ties are cool"  
     3.    Nothing will be output  
     4.    "ties are cool"  
     5.    This code will not compile  
     6.    "Neck ties are cool"  
     7.    This code will compile but crash  
 When this code is executed, what will the third constant contain?
 let first = ["Sulaco", "Nostromo"]
 let second = ["X-Wing", "TIE Fighter"]
 let third = first + second

     1.    "Sulaco", "Nostromo", "Sulaco", "Nostromo"  
     2.    "Sulaco", "Nostromo"  
     3.    This code will not compile  
     4.    "Sulaco", "Nostromo", "X-Wing", "TIE Fighter"  
     5.    "X-Wing", "TIE Fighter", "Sulaco", "Nostromo"  
     6.    This code will compile but crash  
     7.    It will be an empty array  
 Question 25
 What output will be produced by the code below?
 final class Dog {
    func bark() {
       print("Woof!")
    }
 }
 class Corgi : Dog {
    override func bark() {
       print("Yip!")
    }
 }
 let muttface = Corgi()
 muttface.bark()

     1.    "Yip!", "Woof!"  
     2.    "Yip!"  
     3.    Nothing will be output  
     4.    This code will compile but crash  
     5.    This code will not compile  
     6.    "Woof!", "Yip!"  
     7.    "Woof!"  
 Question 26
 When this code is executed, what will be the value of the j constant?
 let i = "5"
 let j = i + i

     1.    5, 5 (an array of integers)  
     2.    This code will not compile  
     3.    5 (an integer)  
     4.    "55" (a string)  
     5.    "5", "5" (an array of strings)  
     6.    This code will compile but crash  
     7.    "5" (a string)  
     8.    55 (an integer)  
 Question 27
 What output will be produced by the code below?
 ￼
 let i = "5"
 let j = i + i
 var i = 2
 repeat {

    i *= i * 2
 } while i < 100
 print(i)
     1.    128  
     2.    64  
     3.    This code will not compile  
     4.    This code will compile but crash  
     5.    Nothing will be output  
     6.    This is an infinite loop  
     7.    2  
 Question 28
 Once this code is executed, how many items will numbers contain?
 var numbers = [1, 2, 3]
 numbers += [4]

     1.    It will be empty  
     2.    2  
     3.    3  
     4.    1  
     5.    4  
     6.    This code will compile but crash  
     7.    This code will not compile  
 When this code is executed, what value will num have? let num = UInt.min
     1.    16,777,216  
     2.    This code will compile but crash  
     3.    0  
     4.    This code will not compile  
     5.    -255  
     6.    255  
     7.    -16,777,216  
 Question 30
 What output will be produced by the code below?
 import Foundation
 let number = 16
 print("\(number) squared is \(number * number), and its square
 root is \(sqrt(number))")

     1.    16 squared is 256, and its square root is 4  
     2.    16 squared is 16 * 16, and its square root is sqrt(16)  
     3.    This code will compile but crash  
     4.    This code will not compile  
     5.    16.0 squared is 256.0, and its square root is 4.0  
 Answers (Novice)
 Question 1: The correct answer is B, 'This code will not compile'. Swift requires all switch statements to be exhaustive. This code will not compile because it does not have a default clause.
 Question 2: The correct answer is B, 'Double'. When given a floating-point number, Swift's type inference will use the Double data type.
 Question 3: The correct answer is F, 'shiny'. Swift constants do not have to be given an initial value, as long as they are given a value only once and before they are used.
 Question 4: The correct answer is D, 'This code will not compile'. While it is possible to typecast an NSString into a String using an initializer without a label, it is not possible the other way around. The code should read let ns = NSString(string: "Hello").
 Question 5: The correct answer is E, 'This code will not compile'. This code will not compile because it modifies name inside the loop. If you want to do this, you must use the var keyword like this: for var name in names.
 Question 6: The correct answer is C, 'It depends on the device'. Swift's integers are 32-bit on 32-bit devices such as iPhone 5 and earlier, and 64-bit on 64-bit devices such as iPhone 5s and later.
 Question 7: The correct answer is A, 'This code will not compile'. Swift arrays do not have a length property; this code should use count. With that replacement the code will compile, however it will then crash because it uses the closed range operator (...), which will cause an out-of-bounds error when reading into the array.
 Question 8: The correct answer is D, 'This code will not compile'. The names array was declared using let, which makes it a constant. This means it is a compile error to try to use append() to add strings to it.
 Question 9: The correct answer is B, 'This code will not compile'. Subscripting an array of strings will return a String rather than a String?, which means it is a compile error to attempt to unwrap it using if let.
 Question 10: The correct answer is B, 'This code will not compile'. The do keyword is invalid here; the programmer should use repeat instead. Question 11: The correct answer is G, '1, 2, 3'. This uses the closed range operator (...) to loop
 from 1 to 3 inclusive.
 Question 12: The correct answer is D, 'This code will compile but crash'. This code will be compiled successfully, but crash at runtime: Swift does not allow you to generate ranges where the initial value is greater than the end value.
 Question 13: The correct answer is D, 'This code will not compile'. Structs have memberwise initialization as standard, but this is not available to classes. The code will fail to compile because the Starship class has no initializers.
 Question 14: The correct answer is D, 'TARDIS'. Although enterprise was created as a copy of tardis, it is a struct and therefore a value type: changing enterprise will not also change tardis.
 Question 15: The correct answer is C, '16.0 squared is 256.0, and its square root is 4.0'. Using its type inference, Swift will consider number to be an Double, which will be interpolated correctly into the string even when sqrt() is called. When Doubles are interpolated into strings, they have .0 appended to their values when they have no fractional digits.
 Question 16: The correct answer is A, 'Howdy, Jayne!'. This is a basic example of string interpolation in action. As well as replacing simple values, Swift can also call a function as part of interpolation, as seen here.
 Question 17: The correct answer is E, 'I'm called TARDIS!'. The willSet property observer is triggered only when the initial value is changed, and not when the struct is created using memberwise initialization.
 Question 18: The correct answer is D, 'It's very windy'. The windy case value has an associated value to store the wind speed as an integer. In the code, this is set to 10, which means the "It's very windy" case will be triggered in the switch block.
 Question 19: The correct answer is D, '"Serenity", "Sulaco"'. The where condition for the loop will ensure that only names that start with the letter S will used inside the loop.
 Question 20: The correct answer is D, '1000'. Swift allows you to use any number of leading zeroes before a number, and any number of underscores inside a number, in order to make reading easier. The example given, 0_1_0_0_0, is unlikely, but a perfectly valid way to write 1000.
 Question 21: The correct answer is A, 'Galactica'. Using names.last will return an optional string, but the if let unwraps that safely to produce "Galactica".
 Question 22: The correct answer is C, 'The error message was: Forbidden'. When in a catch block with no pattern, Swift automatically matches any error and binds it to a local constant called error.
 Question 23: The correct answer is B, 'Bow ties are cool'. The replacingOccurrences() method returns a new string with its change effected, rather than modifying it in place. In this code, that return value is being discarded, so the original motto variable remains unchanged.
 Question 24: The correct answer is D, '"Sulaco", "Nostromo", "X-Wing", "TIE Fighter"'. Swift arrays can be joined together using the + operator, which adds the right-hand array to the end of the left-hand.
 Question 25: The correct answer is E, 'This code will not compile'. This code attempts to create a new class, Corgi, that inherits from an existing class, Dog. Ordinarily that would be fine, but here the Dog class has been marked as final, which means it cannot be inherited from.
 Question 26: The correct answer is D, '55" (a string)'. When used with strings, the + operator acts to append one string to another. In this case, it merges "5" onto "5" to make "55"
 Question 27: The correct answer is A, '128'. Each time the loop goes around, the i is doubled then multiplied by itself. The first time through the loop it will be 8, and the second time it will be 128, at which point the loop will exit and print 128.
 Question 28: The correct answer is E, '4'. The += operator, when applied to array, serves to append one array to another in place. In this case, it appends an array containing one item (4) to the existing array of three items.
 Question 29: The correct answer is C, '0'. UInt means "unsigned integer", which is a whole number that cannot be less than zero.
 Question 30: The correct answer is D, 'This code will not compile'. The sqrt() function can be called using two different types of parameter, neither of which are integers. In this example, Swift's type inference will consider number to be an Integer, which cannot be used by sqrt() unless you typecast it.

















 */
