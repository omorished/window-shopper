//
//  ViewController.swift
//  window-shopper
//
//  Created by Os! on 24/05/2019.
//  Copyright © 2019 Os!. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //IB connections
    @IBOutlet weak var wageTxt: CustomTxtField!
    @IBOutlet weak var priceTxt: CustomTxtField!
    
    //variables
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create calculate button
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9363499365, green: 0.5432011642, blue: 0.01204737401, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        //when ever button pressed
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        
        //connect button to textfield keyboard
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }
    
    @objc func calculate() {
        print("Hi there")
    }


}

