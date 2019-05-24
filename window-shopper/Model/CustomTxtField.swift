//


import UIKit

@IBDesignable

class CustomTxtField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTxtfield()

    }
    
    override func prepareForInterfaceBuilder() {
        customizeTxtfield()
    }
    
    func customizeTxtfield() {
        
        //txtfield attribute
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        font = UIFont(name: "Avenir", size: 18)
        //placeholder attribute
        if let currentPlaceHolder = placeholder {
            
            let place = NSAttributedString(string: currentPlaceHolder, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place
            
        }
    }

}
