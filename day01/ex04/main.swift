import Foundation

//print (Deck.allCards)
//
//var a:[Card] = Deck.allCards
//a.mix()
//print(a)
var bbb:Deck = Deck(false)
print(bbb)

var dddd:Deck = Deck(true)
print(dddd)

if let db = bbb.draw() {
    bbb.fold(db)
    print("\ndisards")
    print(bbb.disards)
}
else {
    print ("nil")
}
