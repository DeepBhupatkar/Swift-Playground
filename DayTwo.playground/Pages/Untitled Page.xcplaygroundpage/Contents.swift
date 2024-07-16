import Foundation


//Starting of Extension Example

// Define the Person class
class Person {
    var firstName: String
    var lastName: String
    
    // Initializer
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    // Method to return the full name
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Extend the Person class to add new functionality
extension Person {
    // Method to return the initials
    func initials() -> String {
        let firstInitial = firstName.first ?? Character("")
        let lastInitial = lastName.first ?? Character("")
        return "\(firstInitial)\(lastInitial)"
    }
}

// Create an instance of Person
let person = Person(firstName: "Deep", lastName: "Bhupatkar")

// Print the full name and initials
print(person.fullName())  // Output: "John Doe"
print(person.initials())  // Output: "JD"

//Ending of Extension Example

//Starting of Generics Example

// Generic function to swap two values of any type
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    // Temporarily store the value of 'a'
    let temporaryA = a
    // Assign the value of 'b' to 'a'
    a = b
    // Assign the value of 'temporaryA' (original 'a') to 'b'
    b = temporaryA
}

// Example usage with integers
var firstInt = 10
var secondInt = 20
swapTwoValues(&firstInt, &secondInt)
print("firstInt: \(firstInt), secondInt: \(secondInt)")  // Output: firstInt: 20, secondInt: 10

// Example usage with strings
var firstString = "Hello"
var secondString = "World"
swapTwoValues(&firstString, &secondString)
print("firstString: \(firstString), secondString: \(secondString)")  // Output: firstString: World, secondString: Hello



//Ending of Generics Example
