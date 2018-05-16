//
//  main.swift
//  TermsOfOffice
//
//  My last name is: LASTNAME
//  My first name is: FIRSTNAME
//

import Foundation

// Required code, please do not modify or remove.
extension Double {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

// INPUT
// Collect and filter user input here

var yearXInput = 0

while 1 == 1 {
    print("Enter the current year (year X):")
    guard let givenInput = readLine() else {
        continue
    }
    guard let integerInput = Int(givenInput) else {
        continue
    }
    if integerInput < 0 {
        continue
    }
    yearXInput = integerInput
    break
}
 var yearYInput = 0

while 1 == 1 {
    print ("Enter the future year (year Y):")
    guard let givenInput = readLine() else {
        continue
    }
    guard let intergerInput = Int(givenInput) else {
        continue
    }
    if intergerInput < 0 {
        continue
    }
    yearYInput = intergerInput
    break
}

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

var substitute = 0
if yearXInput > yearYInput {
    print("Years given have been swapped since the current year provided was greater than the future year.")
    substitute = yearXInput
    yearXInput = yearYInput
    yearYInput = yearXInput
}

var originalX = yearXInput
var changedYears = 0

while yearXInput < yearYInput {
    changedYears += 1
    print("All positions change in year \(yearXInput)")
    yearXInput += 60
}

// OUTPUT
// Report results to the user here

// Example of how to produce a rounded decimal
print(changedYears)
let a = Double(changedYears)
let b = Double(yearYInput-originalX+1)
let percentage = a / b * 100
let percentageAsString = percentage.format(f: ".1")
if originalX != yearYInput {
print("Between \(yearXInput) and \(yearYInput), all positions changed at the start of \(percentageAsString)% of years.")
} else {
    print("Between \(yearXInput) and \(yearYInput), all positions changed at the start of 100.0% of years.")
}

