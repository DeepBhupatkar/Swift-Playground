import UIKit

var greeting = "Hello, playground"

class Car {
    var model: String
    var color: String

    required init(model: String, color: String) {
        self.model = model
        self.color = color
    }

    // Instance method to describe the car
    func describe() {
        print("This is a \(self.color) \(self.model).")
    }

    // Class method to create a new car of the same type
    class func createNewCar() -> Self {
        return Self.init(model: "Generic", color: "White")
    }
}

class Sedan: Car {
    override class func createNewCar() -> Self {
        return Self.init(model: "Sedan", color: "Black")
    }
}

class SUV: Car {
    override class func createNewCar() -> Self {
        return Self.init(model: "SUV", color: "Red")
    }
}

// Create instances of Sedan and SUV
let mySedan = Sedan(model: "Model S", color: "Blue")
let mySUV = SUV(model: "Model X", color: "Green")

// Use self to describe the car
mySedan.describe() // Output: This is a Blue Model S.
mySUV.describe()   // Output: This is a Green Model X.

// Use Self to create a new car of the same type
let newSedan = Sedan.createNewCar()
let newSUV = SUV.createNewCar()

newSedan.describe() // Output: This is a Black Sedan.
newSUV.describe()   // Output: This is a Red SUV.
