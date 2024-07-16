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
