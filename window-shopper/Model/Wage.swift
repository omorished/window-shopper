
import Foundation



class Wage {
    
    class func claculateHours(forWage wage: Double, withPrice price: Double) -> Int {
        
        return Int(ceil(price / wage))
    }
    
    
    
}
