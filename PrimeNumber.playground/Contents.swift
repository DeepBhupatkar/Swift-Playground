import UIKit

let num : Int = 11

var count : Int = 0

for i in 1...num
{
    if (num%i==0)
    {
        count += 1
    }
}

if (count == 2)
{
    print ("Number is prime ")
}
else {
    print("Number is not prime ")
}
