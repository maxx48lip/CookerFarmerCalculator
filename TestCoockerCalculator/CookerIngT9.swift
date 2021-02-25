//
//  CookerIngT9.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT9 {
    struct VenisonSausage: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Venison Sausage"
        let sellingPrice: Decimal = 2.31
        let xpGain: Int = 0
        let tierLevel: TierLevel = .westemnet
        let ingredients: [BaseIngredientProtocol] = [
            VendorIngredients.HaunchOfVenison(),
            VendorIngredients.PinchOfPepper(),
            VendorIngredients.PinchOfMixedHerbs(),
            VendorIngredients.BottleOfSavourySeasonings()
        ]
    }

    struct BowlOfVegetableStock: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Bowl Of Vegetable Stock"
        let sellingPrice: Decimal = 2.31
        let xpGain: Int = 0
        let tierLevel: TierLevel = .westemnet
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT9.BunchOfKingsteadMushrooms(),
            FarmerT7.BunchesOfLeeks(),
            FarmerT1.FreshCarrot(),
            VendorIngredients.BottleOfWater()
        ]
    }

    struct CupOfBakedBeans: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Cup Of Baked Beans"
        let sellingPrice: Decimal = 2.31
        let xpGain: Int = 0
        let tierLevel: TierLevel = .westemnet
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT9.BunchOfBeans(),
            VendorIngredients.DropOfWildflowerHoney(),
            VendorIngredients.PieceOfUncookedBacon(),
            VendorIngredients.BottleOfWater()
        ]
    }

    struct BowlOfPoachedPears: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "BowlOfPoachedPears"
        let sellingPrice: Decimal = 2.31
        let xpGain: Int = 0
        let tierLevel: TierLevel = .westemnet
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT9.BunchOfPears(),
            VendorIngredients.PinchOfMixedSpice(),
            VendorIngredients.PinchOfCinnamon(),
            VendorIngredients.BottleOfWater()
        ]
    }

    struct JarOfPearPreserves: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Jar Of Pear Preserves"
        let sellingPrice: Decimal = 2.31
        let xpGain: Int = 0
        let tierLevel: TierLevel = .westemnet
        let ingredients: [BaseIngredientProtocol] = [
            CookerIngT9.BowlOfPoachedPears(),
            VendorIngredients.DropOfWildflowerHoney(),
            VendorIngredients.PinchOfFreshGinger()
        ]
    }
}

extension CookerIngT9: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            VenisonSausage(),
            BowlOfVegetableStock(),
            CupOfBakedBeans(),
            BowlOfPoachedPears(),
            JarOfPearPreserves()
        ]
    }
}
