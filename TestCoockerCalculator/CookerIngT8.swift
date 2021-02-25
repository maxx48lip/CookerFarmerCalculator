//
//  CookerIngT8.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT8 {
    struct BowlOfDuckStock: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Bowl Of Duck Stock"
        let sellingPrice: Decimal = 1.98
        let xpGain: Int = 0
        let tierLevel: TierLevel = .eastemnet
        let ingredients: [BaseIngredientProtocol] = [
            VendorIngredients.UncookedDuckBreasts(count: 2),
            FarmerT8.BunchesOfTurnips(),
            VendorIngredients.BottleOfWater()
        ]
    }

    struct BowlOfStewedTurnips: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Bowl Of Stewed Turnips"
        let sellingPrice: Decimal = 1.98
        let xpGain: Int = 0
        let tierLevel: TierLevel = .eastemnet
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT8.BunchesOfTurnips(count: 2),
            VendorIngredients.BagOfSalt(),
            VendorIngredients.BottleOfWater()
        ]
    }

    struct BowlOfMashedTurnips: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Bowl Of Mashed Turnips"
        let sellingPrice: Decimal = 1.98
        let xpGain: Int = 0
        let tierLevel: TierLevel = .eastemnet
        let ingredients: [BaseIngredientProtocol] = [
            CookerIngT8.BowlOfStewedTurnips(count: 2),
            VendorIngredients.LargeBottleMilk(),
            VendorIngredients.LumpOfButter()
        ]
    }

    struct CupOfRyeFlour: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Cup of Rye Flour"
        let sellingPrice: Decimal = 1.98
        let xpGain: Int = 0
        let tierLevel: TierLevel = .eastemnet
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT8.BunchesOfRyeBerries(count: 2)
        ]
    }

    struct JarOfCherryJam: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Jar Of Cherry Jam"
        let sellingPrice: Decimal = 0.24
        let xpGain: Int = 0
        let tierLevel: TierLevel = .eastemnet
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT8.BunchesOfCherries(count: 2),
            VendorIngredients.DropOfFineCloverHoney(),
            VendorIngredients.CupOfAppleJuice()
        ]
    }
}

extension CookerIngT8: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            BowlOfDuckStock(),
            BowlOfStewedTurnips(),
            BowlOfMashedTurnips(),
            CupOfRyeFlour(),
            JarOfCherryJam()
        ]
    }
}
