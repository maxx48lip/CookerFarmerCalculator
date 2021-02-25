//
//  CookerIngT7.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT7 {
    struct BowlOfLeekStock: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Bowl Of Leek Stock"
        let sellingPrice: Decimal = 1.65
        let xpGain: Int = 4
        let tierLevel: TierLevel = .westfold
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT7.BunchesOfLeeks(count: 2),
            FarmerT5.GoldenShireTater(),
            VendorIngredients.BottleOfWater()
        ]
    }

    struct CupOfBlackBarleyFlour: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Cup Of Black Barley Flour"
        let sellingPrice: Decimal = 1.65
        let xpGain: Int = 2
        let tierLevel: TierLevel = .westfold
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT7.BundlesOfBlackBarley(count: 2)
        ]
    }

    struct LoafOfBarleyBread: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Loaf Of Barley Bread"
        let sellingPrice: Decimal = 1.65
        let xpGain: Int = 4
        let tierLevel: TierLevel = .westfold
        let ingredients: [BaseIngredientProtocol] = [
            CookerIngT7.CupOfBlackBarleyFlour(count: 2),
            VendorIngredients.DropOfFineCloverHoney(),
            VendorIngredients.ChikenEgg()
        ]
    }

    struct CupOfBreadCrumbs: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Cup of Bread-crumbs"
        let sellingPrice: Decimal = 1.65
        let xpGain: Int = 2
        let tierLevel: TierLevel = .westfold
        let ingredients: [BaseIngredientProtocol] = [
            CookerIngT7.LoafOfBarleyBread()
        ]
    }

    struct CupOfOatmeal: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Cup Of Oatmeal"
        let sellingPrice: Decimal = 1.65
        let xpGain: Int = 2
        let tierLevel: TierLevel = .westfold
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT7.BundlesOfBlackBarley(count: 2)
        ]
    }
}

extension CookerIngT7: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            BowlOfLeekStock(),
            CupOfBlackBarleyFlour(),
            LoafOfBarleyBread(),
            CupOfBreadCrumbs(),
            CupOfOatmeal()
        ]
    }
}
