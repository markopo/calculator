//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Marko Poikkimäki on 2017-02-19.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import Foundation


class CalculatorModel {
    

    func GetNumber(_ buttonTitle:String) -> Int {
       return Int(buttonTitle)!
    }
    
    func Addition(sum:Int, number:Int) -> Int {
        return sum + number
    }
    
    func Subtraction(sum:Int,number:Int) -> Int  {
        return sum == 0 ? number - sum : sum - number
    }
    
    func Division(sum:Int, number:Int) -> Int {
        return number > 0 && sum > 0 ? (sum / number) : number
    }
    
    func MultiPlication(sum:Int, number:Int) -> Int {
        
        if sum == 0 {
            return number
        }
        else {
            let res = Int.multiplyWithOverflow(sum, number)
            return res.overflow ? number : res.0
        }
    }
}
