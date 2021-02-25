//
//  VendorIngredients.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct VendorIngredients {

    struct BagOfSalt: VendorIngredientProtocol {
        let name: String = "Bag of salt"
        let purchasePrice: Decimal = 1.12
        let sellingPrice: Decimal = 0.28
        var count: Int = 1
    }

    struct LumpOfButter: VendorIngredientProtocol {
        let name: String = "Lump Of Butter"
        let purchasePrice: Decimal = 0.24
        let sellingPrice: Decimal = 0.06
        var count: Int = 1
    }

    struct ChikenEgg: VendorIngredientProtocol {
        let name: String = "Chiken Egg"
        let purchasePrice: Decimal = 0.24
        let sellingPrice: Decimal = 0.06
        var count: Int = 1
    }

    struct CupOfFreshCream: VendorIngredientProtocol {
        let name: String = "Cup Of Fresh Cream"
        let purchasePrice: Decimal = 3.12
        let sellingPrice: Decimal = 0.78
        var count: Int = 1
    }

    struct StalkRhubarb: VendorIngredientProtocol {
        let name: String = "Stalk Rhubarb"
        let purchasePrice: Decimal = 3.12
        let sellingPrice: Decimal = 0.78
        var count: Int = 1
    }

    struct Oxtail: VendorIngredientProtocol {
        let name: String = "Oxtail"
        let purchasePrice: Decimal = 6.0
        let sellingPrice: Decimal = 1.50
        var count: Int = 1
    }

    struct BakingSeed: VendorIngredientProtocol {
        let name: String = "Baking Seed"
        let purchasePrice: Decimal = 6.0
        let sellingPrice: Decimal = 1.50
        var count: Int = 1
    }

    struct PieceOfGoatCheese: VendorIngredientProtocol {
        let name: String = "Piece Of Goat Cheese"
        let purchasePrice: Decimal = 6.0
        let sellingPrice: Decimal = 1.50
        var count: Int = 1
    }

    struct CupOfAppleJuice: VendorIngredientProtocol {
        let name: String = "Cup Of Apple Juice"
        let purchasePrice: Decimal = 7.20
        let sellingPrice: Decimal = 1.80
        var count: Int = 1
    }

    struct HandOfMaxedNuts: VendorIngredientProtocol {
        let name: String = "Hand Of Maxed Nuts"
        let purchasePrice: Decimal = 7.20
        let sellingPrice: Decimal = 1.80
        var count: Int = 1
    }

    // MARK: - Meat

    struct CutOfBeef: VendorIngredientProtocol {
        let name: String = "Cut Of Beef"
        let purchasePrice: Decimal = 1.12
        let sellingPrice: Decimal = 0.28
        var count: Int = 1
    }

    struct LambKidney: VendorIngredientProtocol {
        let name: String = "Lamb Kidney"
        let purchasePrice: Decimal = 1.12
        let sellingPrice: Decimal = 0.28
        var count: Int = 1
    }

    struct PorkShanks: VendorIngredientProtocol {
        let name: String = "PorkShanks"
        let purchasePrice: Decimal = 0.24
        let sellingPrice: Decimal = 0.06
        var count: Int = 1
    }

    struct HaunchOfVenison: VendorIngredientProtocol {
        let name: String = "Haunch Of Venison"
        let purchasePrice: Decimal = 8.40
        let sellingPrice: Decimal = 2.10
        var count: Int = 1
    }

    struct UncookedChicken: VendorIngredientProtocol {
        let name: String = "Uncooked Chicken"
        let purchasePrice: Decimal = 2.12
        let sellingPrice: Decimal = 0.53
        var count: Int = 1
    }

    struct UncookedDuckBreasts: VendorIngredientProtocol {
        let name: String = "Uncooked Duck Breasts"
        let purchasePrice: Decimal = 7.20
        let sellingPrice: Decimal = 1.8
        var count: Int = 1
    }

    struct PieceOfUncookedBacon: VendorIngredientProtocol {
        let name: String = "Piece Of Uncooked Bacon"
        let purchasePrice: Decimal = 1.12
        let sellingPrice: Decimal = 0.28
        var count: Int = 1
    }
    
    // MARK: - Botles
    
    struct BottleOfVinegar: VendorIngredientProtocol {
        let name: String = "Bottle of Vinegar"
        let purchasePrice: Decimal = 4.20
        let sellingPrice: Decimal = 1.05
        var count: Int = 1
    }
    
    struct BottleOfWater: VendorIngredientProtocol {
        let name: String = "Bottle Of Water"
        let purchasePrice: Decimal = 0.24
        let sellingPrice: Decimal = 0.06
        var count: Int = 1
    }

    struct LargeBottleMilk: VendorIngredientProtocol {
        let name: String = "Large Bottle Milk"
        let purchasePrice: Decimal = 2.12
        let sellingPrice: Decimal = 0.53
        var count: Int = 1
    }

    struct BottleOfSavourySeasonings: VendorIngredientProtocol {
        let name: String = "Bottle Of Savoury Seasonings"
        let purchasePrice: Decimal = 3.12
        let sellingPrice: Decimal = 0.78
        var count: Int = 1
    }

    // MARK: - Drops

    struct DropOfHoney: VendorIngredientProtocol {
        let name: String = "Drop of Honey"
        let purchasePrice: Decimal = 0.56
        let sellingPrice: Decimal = 0.14
        var count: Int = 1
    }

    struct DropOfFineCloverHoney: VendorIngredientProtocol {
        let name: String = "Drop of Fine Clover Honey"
        let purchasePrice: Decimal = 3.12
        let sellingPrice: Decimal = 0.78
        var count: Int = 1
    }

    struct DropOfWildflowerHoney: VendorIngredientProtocol {
        let name: String = "Drop of Wildflower Honey"
        let purchasePrice: Decimal = 8.40
        let sellingPrice: Decimal = 2.10
        var count: Int = 1
    }

    // MARK: - Pinches

    struct PinchOfCinnamon: VendorIngredientProtocol {
        let name: String = "Pinch Of Cinnamon"
        let purchasePrice: Decimal = 2.12
        let sellingPrice: Decimal = 0.53
        var count: Int = 1
    }
    
    struct PinchOfShireSeasonings: VendorIngredientProtocol {
        let name: String = "Pinch Of Shire Seasonings"
        let purchasePrice: Decimal = 0.56
        let sellingPrice: Decimal = 0.14
        var count: Int = 1
    }

    struct PinchOfMixedSpice: VendorIngredientProtocol {
        let name: String = "Pinch Of Mixed Spice"
        let purchasePrice: Decimal = 4.20
        let sellingPrice: Decimal = 1.05
        var count: Int = 1
    }

    struct PinchOfMixedHerbs: VendorIngredientProtocol {
        let name: String = "Pinch Of Mixed Herbs"
        let purchasePrice: Decimal = 4.20
        let sellingPrice: Decimal = 1.05
        var count: Int = 1
    }

    struct PouchOfFineSeasonings: VendorIngredientProtocol {
        let name: String = "Pouch of Fine Seasonings"
        let purchasePrice: Decimal = 2.12
        let sellingPrice: Decimal = 0.53
        var count: Int = 1
    }

    struct PinchOfPepper: VendorIngredientProtocol {
        let name: String = "Pinch Of Pepper"
        let purchasePrice: Decimal = 7.20
        let sellingPrice: Decimal = 1.80
        var count: Int = 1
    }

    struct PinchOfFreshGinger: VendorIngredientProtocol {
        let name: String = "Pinch Of Fresh Ginger"
        let purchasePrice: Decimal = 8.40
        let sellingPrice: Decimal = 2.10
        var count: Int = 1
    }
}
