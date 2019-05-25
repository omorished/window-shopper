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
    
    @IBOutlet weak var resultLb: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
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
        
        //Intially hidden
        resultLb.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    //to change status bar to white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    } 
    
    @objc func calculate() {
        
        //to hide keyboard
        view.endEditing(true)
        
        //(1)first check to guarantee the textfields are not empty
        //(2)second check to guarantee the input in fields is valid to casting it to diuble because we don't know maybe the user copy and paste the input from safari or anywhere
        if let wageText = wageTxt.text, let priceText = priceTxt.text {
            
            if let wage = Double(wageText), let price = Double(priceText) {
                
                resultLb.text = ("\(Wage.claculateHours(forWage: wage, withPrice: price))")
                
                //let's unhidden Lbls
                resultLb.isHidden = false
                hoursLbl.isHidden = false
            }
        }
    }
    
    @IBAction func clearCalculator(_ sender: UIButton) {
        
        wageTxt.text = ""
        priceTxt.text = ""
        resultLb.isHidden = true
        hoursLbl.isHidden = true
    }
    


}

