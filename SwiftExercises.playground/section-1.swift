import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    return "My favorite cheese is \(cheese)."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
let newArray = numberArray + [5]
//var arrayCopy = numberArray
//arrayCopy += [5]
// What way is better?

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
var newDictionary = numberDictionary
newDictionary[5] = "five"
newDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for number in 1...10 {
    println(number)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for number in 1..<11 {
    println(number)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var drinkArray:Array<String> = []
    for character in characters {
        drinkArray.append(character["favorite drink"]!)
    }
    return drinkArray
    //I have no idea what is going on here. Remind me to talk about this in our meeting. Jason said something about a map.
    
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

let newString = ";".join(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
let alphabetCereal = sorted(cerealArray, <)

