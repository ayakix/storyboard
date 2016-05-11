//
//  ViewController.swift
//  storyboardtest
//
//  Created by Ayakix on 2016/05/10.
//  Copyright © 2016年 Ayakix All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "First"
        customView.label.text = "AAAAAAAA"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushedNextButton(sender: UIButton) {
        print("pushed!")
    }
}

