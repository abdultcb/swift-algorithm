import Foundation

/** What is a Pallindrome number?
 
 A palindrome number is a number that remains the same when its digits are reversed.
 
 For example, 525.
 
 */

func isPallindrome(_ number: Int) -> Bool {
    
    // String based Comparision Solution
    //------------------------------
    
    //    let numberStr = String(number)
    //    var stack: [Character] = [] // Stack is used to reverse the order
    //    for char in numberStr {
    //        stack.append(char)
    //    }
    //
    //    var reversedNumberStr = ""
    //    while !stack.isEmpty {
    //        if let topStackItem = stack.popLast() {
    //            reversedNumberStr += String(topStackItem)
    //        }
    //    }
    //
    //    if numberStr == reversedNumberStr {
    //        return true
    //    }
    
    
    
    
    // Numeric logic bases solution
    //------------------------------
    
    // Reverse the number
    var reverseNumber = 0
    var originalNum = number
    while originalNum != 0 {
        reverseNumber = reverseNumber * 10
        reverseNumber = reverseNumber + originalNum % 10
        originalNum = originalNum/10
    }
    
    // Compare original with the reversed number
    if number == reverseNumber {
        return true
    }
    
    return false
}
   
