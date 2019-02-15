//
//  ViewController.swift
//  XQDelegatedDemo
//
//  Created by WXQ on 2019/2/15.
//  Copyright © 2019 WXQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    @IBAction func respondsToBtn(_ sender: Any) {
        self.present(XQTestVC(), animated: true, completion: nil)
    }
    
}

