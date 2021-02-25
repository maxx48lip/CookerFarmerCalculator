//
//  CookerIngT6.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT6 {
    struct JarOfMintSauce: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Jar Of Mint Sauce"
        let sellingPrice: Decimal = 0.86
        let xpGain: Int = 4
        let tierLevel: TierLevel = .supreme
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT6.BundlesOfMintLeaves(count: 2),
            VendorIngredients.BottleOfVinegar(),
            VendorIngredients.PinchOfMixedSpice()
        ]
    }

    struct BowlOfMashedRoyalTaters: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Bowl Of Mashed Royal Taters"
        let sellingPrice: Decimal = 1.16
        let xpGain: Int = 4
        let tierLevel: TierLevel = .supreme
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT6.RoyalTater(count: 2),
            VendorIngredients.BagOfSalt(),
            VendorIngredients.PinchOfMixedHerbs()
        ]
    }

    struct BallOfDough: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Ball Of Dough"
        let sellingPrice: Decimal = 1.16
        let xpGain: Int = 4
        let tierLevel: TierLevel = .supreme
        let ingredients: [BaseIngredientProtocol] = [
            CookerIngT4.CupOfWinterBarleyFlour(count: 2),
            VendorIngredients.BottleOfWater()
        ]
    }

    struct JarOfBlackberryJam: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Jar Of Blackberry Jam"
        let sellingPrice: Decimal = 1.16
        let xpGain: Int = 4
        let tierLevel: TierLevel = .supreme
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT5.BunchesOfBlackberries(count: 2),
            VendorIngredients.BottleOfWater(),
            VendorIngredients.PinchOfMixedSpice()
        ]
    }
}

extension CookerIngT6: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            JarOfMintSauce(),
            BowlOfMashedRoyalTaters(),
            BallOfDough(),
            JarOfBlackberryJam()
        ]
    }
}
