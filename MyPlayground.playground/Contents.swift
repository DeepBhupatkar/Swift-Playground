
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
