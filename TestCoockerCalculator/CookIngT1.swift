//
//  CookIngT1.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT1 {
    struct CupOfSpringBarleyFlour: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Cup Of Spring Barley Flour"
        let sellingPrice: Decimal = 0.07
        let xpGain: Int = 4
        let tierLevel: TierLevel = .apprentice
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT1.BundlesOfSpringBarley(count: 2)
        ]
    }

    struct PieCrust: CraftIngredientProtocol {
        var count: Int = 1
        let name: String = "Pie Crust"
        let sellingPrice: Decimal = 0.07
        let xpGain: Int = 4
        let tierLevel: TierLevel = .apprentice
        let ingredients: [BaseIngredientProtocol] = [
            CookerIngT1.CupOfSpringBarleyFlour(count: 2),
            VendorIngredients.ChikenEgg()
        ]
    }
}

extension CookerIngT1: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            CupOfSpringBarleyFlour(),
            PieCrust()
        ]
    }
}
