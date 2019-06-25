import Foundation

class Deck : NSObject {
    static let allSpades: [Card] = Value.allValues.map { Card(Color.Spade, $0); }
    static let allClubs: [Card] = Value.allValues.map { Card(Color.Club, $0); }
    static let allDiamonds: [Card] = Value.allValues.map { Card(Color.Diamond, $0); }
    static let allHearts: [Card] = Value.allValues.map { Card(Color.Heart, $0); }
    
    static let allCards: [Card] = allSpades + allClubs + allDiamonds + allHearts;

    var cards:[Card]
    var disards:[Card] = []
    var outs:[Card] = []
    
    init(_ bool:Bool) {
        self.cards = Deck.allCards
        if (bool == true) {
            self.cards.mix()
        }
        print(self.cards)
    }
    
    override var description : String {
        return "\(cards)"
    }
    
    func draw() -> Card? {
        if let firstCard = cards.first {
            self.outs.append(firstCard)
            cards.removeFirst()
            return firstCard
        }
        else {
            return nil
        }
    }
    
    func fold(_ c: Card)
    {
        if let foo = self.outs.first(where: {$0 == c}) {
            self.disards.append(foo)
            self.outs.removeAll(where: {$0 == c})
        }
        else {
            return ;
        }
    }
}

extension Array {
    mutating func mix() {
        self.shuffle()
    }
}
