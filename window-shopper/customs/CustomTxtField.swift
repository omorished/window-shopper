//


import UIKit

@IBDesignable

class CustomTxtField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTxtfield()

    }
    
    override func draw(_ rect: CGRect) {
        
        //customize the symbol label
        let size: CGFloat = 25
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true //when ever using draw method you have to make cliptobounds = true to do cornerReduis
        currencyLbl.textAlignment = .center
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8648551146, green: 0.8648551146, blue: 0.8648551146, alpha: 0.7994434932)
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        //choose symbol based on my location automatically
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency //for currency symbol
        formatter.locale = .current //for my location
        
        //then add that symbol to our label
        currencyLbl.text = formatter.currencySymbol
        
        //now let's add Subview to our textfield
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeTxtfield()
       
    }
    
    func customizeTxtfield() {
        
        //txtfield attribute
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10.0
        textAlignment = .center
        clipsToBounds = true //because we used draw(rect: CGRect) method in order to do corenerReduis
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        font = UIFont(name: "Avenir", size: 18)
        //placeholder attribute
        if let currentPlaceHolder = placeholder {
            
            let place = NSAttributedString(string: currentPlaceHolder, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place
            
        }
    }

}
