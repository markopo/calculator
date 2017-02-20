//
//  ViewController.swift
//  Calculator
//
//  Created by Marko Poikkimäki on 2017-02-14.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var tempNum = ""
    private var Sum:Int = 0

    private let model = CalculatorModel()
    
    private var lastOperation = ""
    
    @IBOutlet weak var SumLabel: UILabel!
    
 

    @IBAction func buttonClick(_ sender: UIButton) {
        let title = sender.currentTitle!
        
        
        if title != "+" && title != "C" && title != "=" && title != "-" && title != "/" && title != "*" {
            tempNum += title
            SumLabel.text = String(tempNum)
        }
        else if title == "C" {
            Sum = 0
            tempNum = ""
            SumLabel.text = String(Sum)
        }
        else if title == "="  {
            
            let number = model.GetNumber(tempNum)
            
            
            if lastOperation == "+" {
                Sum = model.Addition(sum: Sum, number: number)
            }
            else if lastOperation == "-" {
                Sum = model.Subtraction(sum: Sum, number: number)
            }
            else if lastOperation == "/" {
                Sum = model.Division(sum: Sum, number: number)
            }
            else if lastOperation == "*" {
                Sum = model.MultiPlication(sum: Sum, number: number)
            }
            
            SumLabel.text = String(Sum)
            lastOperation = ""
            tempNum = String(Sum)
            Sum = 0
        }
        else if title == "+" {
           let number = model.GetNumber(tempNum)
           Sum = model.Addition(sum: Sum, number: number)
           tempNum = ""
           SumLabel.text = String(Sum)
           lastOperation = title
        }
        else if title == "-" {
            let number = model.GetNumber(tempNum)
            Sum = model.Subtraction(sum: Sum, number: number)
            tempNum = ""
            SumLabel.text = String(Sum)
            lastOperation = title
        }
        else if title == "/" {
            let number = model.GetNumber(tempNum)
            Sum = model.Division(sum: Sum, number: number)
            tempNum = ""
            SumLabel.text = String(Sum)
            lastOperation = title
        }
        else if title == "*" {
            let number = model.GetNumber(tempNum)
            Sum = model.MultiPlication(sum: Sum, number: number)
            tempNum = ""
            SumLabel.text = String(Sum)
            lastOperation = title
        }
        
    }
  
    
}

