import Foundation

enum Color:String {
    case Club = "Club"
    case Diamond = "Diamond"
    case Heart = "Heart"
    case Spade = "Spade"

    static var allColors: [Color] = [Club, Diamond, Heart, Spade]
}


//var value = Int("4g")
// Int?
//print(value ?? "DEFAUT")
//if let x = value {
//    // x: Int
//    print(x + 3)
//} else {
//    print("x is nil")
//}
//
//let x = value ?? 0

