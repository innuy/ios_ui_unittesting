//
//  ViewController.swift
//  TestExamples
//
//  Created by Ignacio Duran on 8/28/17.
//  Copyright © 2017 Ignacio Duran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickJorge(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: nil)
    }

}

