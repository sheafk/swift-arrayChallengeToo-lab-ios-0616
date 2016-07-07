//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    
    
    // Create your methods here

    func addNameToDeliLine(name:String) -> String {
    
        //var greeting = String()
        
        if name == "Billy Crystal" {
            
            self.deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        }
        
        if name == "Meg Ryan" {
            
            self.deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        }
        if self.deliLine.isEmpty {
             self.deliLine.append(name)
            return "Welcome \(name), you\'re first in line!"
        }
        
        else {
            self.deliLine.append(name)
            let placeInLine = self.deliLine.count
            return "Welcome \(name), you're number \(placeInLine) in line."
        }
        
        //return greeting
    }
    
    func nowServing() -> String {
        
        var lineCount = String()
        if self.deliLine.count == 0 {
            
            lineCount = "There is no-one to be served!"
            
        }
        else {
            lineCount = "Now serving \(self.deliLine[0])!"
            self.deliLine.removeAtIndex(0)
        
    }
    return lineCount
    }
    
   func  deliLineDescription() -> String {
    
    var stateOfLine = String()
    if self.deliLine.count == 0 {
    
     stateOfLine = "The line is currently empty."
    
    }
    else {
        stateOfLine = "The line is: "
        
        for (index, person) in self.deliLine.enumerate() {
        stateOfLine  = stateOfLine + "\(index + 1)\(person)\n"

        }
    
    }
    return stateOfLine

}
}

