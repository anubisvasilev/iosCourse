import UIKit
//\\ raw value
//enum Payment: Int {
//    case cash = 1
//    case gold = 2
//    case berries
//}
//Payment(rawValue: 1)
//
//typealias Weight = Double
////
//
//enum Payment: {
//
//case cash (Double)
//case gold (Weight)
//case berries (Int)
//}
//let myPayment = Payment.gold(100)
//let getPayment.cash(1000.5)
//
//
//
//
//
//
//
//
//
//enum CustomError:

    
    
class HuntFish {
    
    enum FishType {
        case White_Shark, Tuna, Baracuda, Som
    }
    enum FishSize{
        case Big, Middle, Small
    }
    enum ArealFish {
        case Sea, River
    }
    init(fishType: FishType, size: FishSize, areal: ArealFish, skileton: Bool){
        self.fishType = fishType
        self.size = size
        self.areal = areal
        self.hasAskileton = skileton
        
        
    }
    var fishType: FishType
    var size: FishSize
    var areal: ArealFish
    var hasAskileton: Bool
    
    func bite(){
        print("bite")
    }
}


var fish = HuntFish.init(fishType: .Baracuda, size: .Middle, areal: .Sea, skileton: true)
var fish2 = HuntFish.init(fishType: .Som, size: .Big, areal: .River, skileton: true)



print("Type is \(fish.fishType), size is \(fish.size), areal is  \(fish.areal)")


print("Type is \(fish2.fishType), size is \(fish2.size), areal is  \(fish2.areal)")
