//
//  ViewController.swift
//  SecretsDemo
//
//  Created by JaesungMoon on 2021/02/21.
//

import UIKit
import Secrets

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let manager = SecretsManager(key: "12345")
        if let secret = manager.readSecret() {
            print("The sccret is \(secret)")
        } else {
            print("Failed to read secret")
        }
        
    }


}

