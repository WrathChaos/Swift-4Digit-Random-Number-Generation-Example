//
//  ViewController.swift
//  Test
//
//  Created by Kuray on 3.03.2020.
//  Copyright © 2020 Coursion. All rights reserved.
//  Github: https://github.com/WrathChaos/Swift-4Digit-Random-Number-Generation-Example
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var fourDigitNumber: String {
         var result = ""
         repeat {
             // Create a string with a random number 0...9999
             result = String(format:"%04d", arc4random_uniform(10000) )
         } while result.count < 4
         return result
        }
        
        // USAGE
        let password = fourDigitNumber
        print("Generated Password : \(password)")
    }
}

