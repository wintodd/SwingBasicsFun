//
//  main.swift
//  Swift Basics Fun
//
//  Created by Gina Sprint on 9/1/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")
print("Another print statement")

// one line comment
/*
 this is
 a
 multi line comment
 */

// MARK: - Variables
// every type in swift is an object, which means there are no primitives
var temperature: Int = 75
print(temperature)
// swift can infer types
var temperature2 = 74.9
// Int, Float, Double, Bool, Character, String, Array, Set, Dictionary, etc.
// use let to declare a constant
let month = "September"
let day = 1
print(month)
// string interpolation
print("Today is \(month) \(day)")
// task 1: declare two constants, one for your first name and one for your last name
// print on one line "gina sprint has 10 characters"
let firstName = "gina"
let lastName = "sprint"
let numChars = firstName.count + lastName.count
print("\(firstName) \(lastName) has \(numChars) characters")

// MARK: - Arrays
var quarantineWords: [String] = ["home", "sleep", "netflix"]
print(quarantineWords)
print(quarantineWords.count)
print(quarantineWords.isEmpty)
// 0 based indexing
print(quarantineWords[0])
// can grow or shrink in size
quarantineWords.append("pajamas")
print(quarantineWords)
// task 2: remove the first element in the array
quarantineWords.remove(at: 0)
print(quarantineWords)

// MARK: - Random Numbers
// lets throw a 6-sided die
let randNum = arc4random_uniform(6) + 1
print(randNum)
// type cast
let randNumInt = Int(randNum)

// MARK: - Conditionals
// Swift has a C-style if/else if/else structure
// Swift has Swifty style switch structure (cover later)
var x = 100
if x >= 100 {
    print("x is large")
}
else {
    print("x is not large")
}

// MARK: - Loops
// 3 loops
// C style while, C style repeat-while (do-while), Swifty for in
// no C style for loop: for (int i = 0; i < 10; i++)
for i in 0..<10 {
    print(i, terminator: ", ")
}
print()

// task 3: solve this problem using each of the three loops
// print the first 20 even numbers
// 2, 4, 6, ... , 40
// while loop solution
var i = 2
while i <= 40 {
    print(i, terminator: " ")
    i += 2
}
print()

// repeat while solution
i = 2
repeat {
    print(i, terminator: " ")
    i += 2
} while i <= 40
print()

// for in solution
for i in stride(from: 2, to: 42, by: 2) {
    print(i, terminator: " ")
}
print()

// MARK: - Optionals
// an optional is a variable that either stores a value OR nil
var myOptionalInt: Int? = nil
// before we can use a value in an optional, we have to check if there is one
// first, this is called "unwrapping"
// 2 ways to do this
// 1. force unwrapping (not best practice)
myOptionalInt = 10
var myInt: Int = myOptionalInt! // force unwrap
print(myInt)

// 2. optional binding (preferred approach)
// if there is a value in the optional, store in a temporary variable
// and use that variable safely
myOptionalInt = nil
if let myInt2 = myOptionalInt {
    // safely use myInt2 the Int
    print(myInt2)
}
else {
    print("myOptinalInt is nil")
}

// caution: don't do this...
if myOptionalInt != nil {
    myInt = myOptionalInt!
}

//Warm Up
var family: [String] = ["Win", "Deborah", "Madi", "Stephanie"]

for i in 0..<4 {
    print(family[i])
}

print(family.count)
family.insert("Maizey", at: 1)
print(family)

print("Please enter a family member: ", terminator: "")
let inputStringOptional = readLine()
if let inputString = inputStringOptional {
    print("trying to remove: " + inputString)
    let optionalIndex = family.index(of: inputString)
    if let myIndex = optionalIndex {
        family.remove(at: myIndex)
        print(family)
    }
}

// MARK: - Functions
func sayHello() {
    print("hello")
}

sayHello()


func say(message: String) {
    print(message)
}
say(message: "hola")


func computeCircleArea(radius: Double) {
    let area = Double.pi * pow(radius, 2)
    print(area)
}
computeCircleArea(radius: 5.0)

// -> is how your return a value
//withRadius is the External name, radius is the internal name
func computeCircleArea2(withRadius radius: Double) -> Double {
    let area = Double.pi * pow(radius, 2)
    return area
}
print(computeCircleArea2(withRadius: 5.0))
