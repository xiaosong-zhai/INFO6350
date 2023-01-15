//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jason on 2023/1/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var LabelExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am inside viewDidLoad() function")
    }

    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        LabelExample.text = "Hello World "
    }
    
}

