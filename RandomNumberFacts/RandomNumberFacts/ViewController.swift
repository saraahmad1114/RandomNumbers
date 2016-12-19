//
//  ViewController.swift
//  RandomNumberFacts
//
//  Created by Flatiron School on 12/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NumbersAPIClient.getRandomTrivia { (neededString) in
            print("*************************")
            print(neededString)
            print("*************************")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

