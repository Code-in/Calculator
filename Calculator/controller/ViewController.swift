//
//  ViewController.swift
//  Calculator
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    private var calculate = Calculation()
    var userIsInTheMiddleOfTyping = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        print("Digit clicked value:\(digit)")
        print("Display value:\(display.text ?? "0")")
        calculate.setValue(digit)
        guard let textCurrentlyInDisplay = display.text else { return }
        if textCurrentlyInDisplay == "0" {
            display.text = digit
        } else {
            display.text = textCurrentlyInDisplay + digit
        }
    }
    
    @IBAction func touchOperan(_ sender: UIButton) {
        let digit = sender.currentTitle!
        calculate.setOperan(digit)
        guard let textCurrentlyInDisplay = display.text else { return }
        display.text = textCurrentlyInDisplay + digit
    }
    
    @IBAction func cleanCalculator(_ sender: UIButton) {
        calculate.reset()
        display.text = "0"
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle {
            print("performOperation mathematicalSymbol: \(mathematicalSymbol)")
            display.text = calculate.preformCalculation()
        }
    } // EoM
    
}

