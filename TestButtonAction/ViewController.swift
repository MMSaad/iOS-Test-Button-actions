//
//  ViewController.swift
//  TestButtonAction
//
//  Created by Mustafa Muhammad on 12/14/18.
//  Copyright © 2018 Ara Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Create The first Label
        let label = UILabel()
        label.frame = CGRect(x: 40, y: 40, width: 40, height: 40)
        label.text = "\(count)"
        view.addSubview(label)
        self.label = label
        
        //Create the first button
        let button = UIButton()
        button.setTitle("Click Me", for: .normal)
        button.frame = CGRect(x: 40, y: 60, width: 100, height: 100)
        button.setTitleColor(UIColor.red, for: .normal)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func incrementCount(){
        count += 1
        self.label.text = "\(count)"
    }


}

