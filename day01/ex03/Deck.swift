import Foundation

class Deck : NSObject {
    static let allSpades: [Card] = Value.allValues.map { Card(Color.Spade, $0); }
    static let allClubs: [Card] = Value.allValues.map { Card(Color.Club, $0); }
    static let allDiamonds: [Card] = Value.allValues.map { Card(Color.Diamond, $0); }
    static let allHearts: [Card] = Value.allValues.map { Card(Color.Heart, $0); }
    
    static let allCards: [Card] = allSpades + allClubs + allDiamonds + allHearts;
}

extension Array {
    mutating func mix() {
        self.shuffle()
    }
}
