//
//  Calculation.swift
//  Calculator
//
//  Created by Pete Parks on 5/18/20.
//

import Foundation

struct Calculation {
    
    private var operan: String?
    private var leftValue: String?
    private var rightValue: String?
    
    mutating func setOperan(_ symbol: String) {
        switch symbol {
        case "×", "÷", "+", "-":
            operan = symbol
        default:
            print("in operation key pressed")
        }
    }
    
    mutating func setValue(_ symbol: String) {
        switch symbol {
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            if let operan = operan, !operan.isEmpty {
                if rightValue == nil && symbol != "0" {
                    rightValue = symbol
                } else {
                    guard let currentValue = rightValue else {return}
                    rightValue = currentValue + symbol
                }
            } else {
                if leftValue == nil && symbol != "0" {
                    leftValue = symbol
                } else {
                    guard let currentValue = leftValue else {return}
                    leftValue = currentValue + symbol
                }
            }
        default:
            print("in correct key pressed")
        }
    }
    
    
    
    mutating func preformCalculation() -> String? {
        var returnValue: String?
        guard let rightVal = rightValue else {return nil}
        guard let leftVal = leftValue else {return nil}
        guard let left = Double(leftVal) else {return nil}
        guard let right = Double(rightVal) else {return nil}
        guard let operan = self.operan else {return nil}
        switch operan {
        case "×":
            returnValue = String(left*right)
        case "÷":
            returnValue = String(left/right)
        case "+":
            returnValue = String(left+right)
        case "-":
            returnValue = String(left-right)
        default:
            returnValue = nil
        }
        self.operan = nil
        self.leftValue = returnValue
        self.rightValue = nil
        return returnValue
    }
    
    
    mutating func reset() {
        self.operan = nil
        self.leftValue = nil
        self.rightValue = nil
    }
    
    
    
}
