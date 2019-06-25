import Foundation

class Card: NSObject{
    private var color:Color
    private var value:Value

    init(_ color:Color, _ value:Value) {
        self.color = color
        self.value = value
        super.init()
    }
    
    override var description : String {
        return self.color.rawValue + " " + "\(self.value.rawValue)"
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        if let object = object as? Card {
            return self.value == object.value && self.color == object.color
        } else {
            return false
        }
    }
}
