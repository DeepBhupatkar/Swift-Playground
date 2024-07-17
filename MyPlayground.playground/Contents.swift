
// Optional like null values Start

var number: Int

number = 4// Defaults to 0
var name: String?      // Defaults to nil
var isEnabled: Bool    // Defaults to false

print(number)

// Optional end

// Dictionary Start
// Empty dictionary with String keys and Int values
var emptyDictionary: [String: Int] = [:]

// Dictionary with initial values
var personInfo: [String: Any] = ["name": "John Doe", "age": 30, "isEmployed": true]



print(personInfo["age"])
// Dictionary End


//---- For Gurad Understanding ----///


//Syntax



//


// Even Number Program Using the if..else

for i in 1...20{
    if(i.isMultiple(of: 2)){
        print(i)
    }
}


//Even Number Program Using guard

for i in 1...20{
    guard i.isMultiple(of: 2) else {
       //don’t run anymore codes and  just continue to the next index
        continue
    }
    print(i)
}

 // BOTH codes will print even numbers (2,4,6,8,10,12,14,16,18,20)



// 2nd Example

var i = 2

while (i <= 10) {
    
  // guard condition to check the even number
  guard i % 2 == 0 else {
   
     i = i + 1
    continue
  }

  print(i)
  i = i + 1
}
// End


// new example of guard steatement
// create a function
func checkOddEven() {
  var number = 22

  // use of guard statement
  guard number % 2 == 0 else {
    
    print("Odd Number")
    return
  }

  print("Even Number")
}

// function call
checkOddEven()

// End

//---- End : For Gurad Understanding ----///



// MARK: Start - Swift Colsuer Example

var greet = {
    
    print("Hello Good Morning")
}

// call closure

 greet()


//example two

var welcomeUser =  { (name:String ) in
    
    print("Hello there,\(name).")
    
    
}
//closure call
welcomeUser("D")


//example three

// closure definition
var findSquare = { (num: Int) -> (Int) in
  var square = num * num
  return square
}

// closure call
var result = findSquare(9)

print("Square:",result)


// End

// Start of @Escaping Example .


import Foundation
import PlaygroundSupport

// Required to allow asynchronous code to run in playground
PlaygroundPage.current.needsIndefiniteExecution = true

class NetworkManager {
    var completionHandler: (() -> Void)?

    func fetchData(completion: @escaping () -> Void) {
        print("Fetching data...")

        // Store the completion handler to be called later
        completionHandler = completion

        // Simulate a network request with a delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("Data fetched!")
            self.completionHandler?() // Call the stored completion handler
        }
    }
}

let networkManager = NetworkManager()

networkManager.fetchData {
    print("Completion handler called: Data processing completed!")
}

print("Fetching data in progress...")

// To keep the playground running long enough for the asynchronous code to execute
//PlaygroundPage.current.finishExecution()

/// End of @Escaping Example

// MARK: EXAMPLE START OF DISPATCH QUEUE .

import Foundation

// 1. Main Queue: Update UI on the main thread
DispatchQueue.main.async {
    print("This is executed on the main thread")
    // Update UI here
}

// 2. Global Queue: Perform background tasks
DispatchQueue.global().async {
    print("This is executed on a background thread")
    // Perform time-consuming task here
}

// 3. Custom Serial Queue: Execute tasks one after another
let serialQueue = DispatchQueue(label: "com.example.serialQueue")
serialQueue.async {
    print("Task 1 on serial queue")
    // Task 1
}
serialQueue.async {
    print("Task 2 on serial queue")
    // Task 2
}

// 4. Custom Concurrent Queue: Execute tasks concurrently
let concurrentQueue = DispatchQueue(label: "com.example.concurrentQueue", attributes: .concurrent)
concurrentQueue.async {
    print("Task 1 on concurrent queue")
    // Task 1
}
concurrentQueue.async {
    print("Task 2 on concurrent queue")
    // Task 2
}

print("End of the playground code")

// MARK: EXAMPLE END OF DISPATCH QUEUE.
