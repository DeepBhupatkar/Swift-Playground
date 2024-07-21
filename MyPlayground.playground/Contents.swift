
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



// MARK: Start of Sync() Example
func syncWork(){
        let northZone = DispatchQueue(label: "perform_task_with_team_north")
        let southZone = DispatchQueue(label: "perform_task_with_team_south")
        
        northZone.sync {
            for numer in 1...3{ print("North \(numer)")}
        }
        southZone.sync {
            for numer in 1...3{ print("South \(numer)") }
        }
    }
    
    //Call Func here
    syncWork()


// MARK: End of Sync () Example


// MARK: Start of Async () Example
func asyncWork(){
        let northZone = DispatchQueue(label: "perform_task_with_team_north")
        let southZone = DispatchQueue(label: "perform_task_with_team_south")
        
        northZone.async {
            for numer in 1...3{ print("North \(numer)") }
        }
        southZone.async {
            for numer in 1...3{ print("South \(numer)") }
        }
    }

//Call Async Task
asyncWork()
// MARK: End of Async () Example


// MARK: Start Of QOS

import Foundation
import PlaygroundSupport

// Required to allow asynchronous code to run in playground
PlaygroundPage.current.needsIndefiniteExecution = true

class AppManager {
    // Function to load user data
    func loadUserData() {
        DispatchQueue.global(qos: .userInitiated).async {
            print("Loading user data...")
            // Simulate a time-consuming task
            Thread.sleep(forTimeInterval: 2)
            print("User data loaded")

            // Update the UI on the main thread
            DispatchQueue.main.async {
                print("Updating UI with user data")
            }
        }
    }

    // Function to perform background sync
    func performBackgroundSync() {
        DispatchQueue.global(qos: .background).async {
            print("Performing background sync...")
            // Simulate a long-running task
            Thread.sleep(forTimeInterval: 5)
            print("Background sync completed")
        }
    }

    // Function to update UI
    func updateUI() {
        DispatchQueue.main.async {
            print("Updating UI...")
        }
    }
}

let appManager = AppManager()

appManager.loadUserData()      // High-priority task to load user data
appManager.performBackgroundSync() // Low-priority task to sync in the background
appManager.updateUI()          // UI update on the main thread

print("App tasks are running...")

// MARK: End Of QOS

// MARK: Start of init() Example

// declare a class
class  Wall {
  var length: Double

  // initializer to initialize property
  init() {
    length = 5.5
    print("Creating a wall.")
    print("Length = ", length)
  }
}

// create an object
var wall1 = Wall()

// MARK: End of init() Example

// MARK: Start Of Protocol () Example

protocol Greet {
  
  // blueprint of property
  var name: String { get }

  // blueprint of a method
  func message()
}

// conform class to Greet protocol
class Employee: Greet {

  // implementation of property
  var name = "Perry"

  // implementation of method
  func message() {
    print("Good Morning", name)
  }
}

var employee1 = Employee()
employee1.message()


// 2nd Example of protocol
// create Sum protocol
protocol Sum {

  func addition()
}

// create Multiplication protocol
protocol Multiplication {

  func product()
}

// conform class to two protocols
class Calculate: Sum, Multiplication {

  var num1 = 0
  var num2 = 0

  func addition () {
    let result1 = num1 + num2
    print("Sum:", result1)
  }

  func product () {
    let result2 = num1 * num2
    print("Product:", result2)
  }
                   
}

// create an object
var calc1 = Calculate()

// assign values to properties
calc1.num1 = 5
calc1.num2 = 10

// access methods
calc1.addition()
calc1.product()


// MARK: End Of Protocol () Example


// MARK: Swift Ranges Example Start

 /// Main three type 1) Closed Range 2) Half Open Range 3) One-Sided Range
 
// Type 1
for numbers in 1...4 {
  print(numbers)
}

// Type 2
for numbers in 1..<4 {
  print(numbers)
}

// Type 3
// one-sided range using
// ..< operator
let range1 = ..<2

// check if -9 is in the range
print(range1.contains(-9))

// one-sided range using
// ... operator
let range2 = 2...

// check if 33 is in the range
print(range2.contains(33))

// MARK: Swift Ranges Example End

