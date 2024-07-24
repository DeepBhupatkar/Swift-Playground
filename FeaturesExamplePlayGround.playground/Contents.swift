import UIKit

var greeting = "Hello, playground"


// MARK: Payload Example Using AnyObject Start.


import Foundation

// Define a class for the payload
class CustomPayload {
    let name: String
    let value: Int
    
    init(name: String, value: Int) {
        self.name = name
        self.value = value
    }
    
    func description() -> String {
        return "Name: \(name), Value: \(value)"
    }
}

// Define a class with the hello method
class Greeter {
    func hello(message: String, age: Int, payload: AnyObject? = nil) {
        // Print the message and age
        print("Message: \(message)")
        print("Age: \(age)")
        
        // Ensure payload is a non-nil object
        guard let payload = payload else {
            print("Error: payload must be a non-nil object.")
            return
        }
        
        // Check if payload is of the expected type
        if let customPayload = payload as? CustomPayload {
            print("Payload is of type CustomPayload: \(customPayload.description())")
        } else {
            print("Error: payload must be of type CustomPayload.")
        }
    }
}

// Create instances and use the hello method
let greeter = Greeter()

// Create a valid CustomPayload instance
let validPayload = CustomPayload(name: "Sample", value: 42)

// Call hello with a valid payload
greeter.hello(message: "Hello, world!", age: 30, payload: validPayload)

// Call hello with an invalid payload
greeter.hello(message: "Hello, world!", age: 30, payload: "Invalid Payload" as AnyObject)

// Call hello without payload
greeter.hello(message: "Hello, world!", age: 30)


// MARK: Payload Example Using AnyObject End.

// MARK: Payload Example Using Encodable Start.

import Foundation

// Define a class for the payload that conforms to Encodable
struct CustomPayloadE: Encodable {
    let name: String
    let value: Int
    
    func description() -> String {
        return "Name: \(name), Value: \(value)"
    }
}

// Define a class with the hello method
class GreeterE {
    func hello(message: String, age: Int, payload: Encodable? = nil) {
        // Print the message and age
        print("Message: \(message)")
        print("Age: \(age)")
        
        // Ensure payload is a non-nil object
        guard let payload = payload else {
            print("Error: payload must be a non-nil object.")
            return
        }
        
        // Attempt to encode the payload to JSON
        let encoder = JSONEncoder()
        do {
            let jsonData = try encoder.encode(payload)
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                print("Payload encoded to JSON: \(jsonString)")
            }
        } catch {
            print("Error encoding payload: \(error)")
        }
    }
}

// Create instances and use the hello method
let greeterE = GreeterE()

// Create a valid CustomPayload instance
let validPayloadE = CustomPayloadE(name: "Encodable", value: 42)

// Call hello with a valid payload
greeterE.hello(message: "Hello, world! JSON", age: 30, payload: validPayloadE)

// Call hello without payload
greeterE.hello(message: "Hello, world! JSON ", age: 30)


// MARK: Payload Example Using Encodable End.
