//
//  ViewController.swift
//  Enable Dark Mode iOS13
//
//  Created by Akashlal on 13/10/19.
//  Copyright © 2019 Akashlal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonLabel.layer.cornerRadius = 5
        
        //To change color programatically with Approach 1, use below syntax
        //descriptionLabel.textColor = UIColor(named: "basicTextColor")
        
        //Uncomment below code for setting colors via approach 2
//        descriptionLabel.textColor = UIColor.basicTextColor
//        titleLabel.textColor = UIColor.basicTextColor
//        buttonLabel.backgroundColor = UIColor.basicTextColor
//        buttonLabel.setTitleColor(UIColor.btnTextColor, for: .normal)
    }


}
