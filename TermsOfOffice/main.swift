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

// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// OUTPUT
// Report results to the user here

// Example of how to produce a rounded decimal
let a = 2.0
let b = 3.0
let percentage = a / b * 100
let percentageAsString = percentage.format(f: ".1")
print("The percentage is \(percentageAsString)%")
