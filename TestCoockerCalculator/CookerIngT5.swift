//
//  CookerIngT5.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT5 {
    struct BlackberryPieFilling: CraftIngredientProtocol {
        var count: Int = 1

        let name: String = "Blackberry Pie Filling"
        let sellingPrice: Decimal = 0.86
        let xpGain: Int = 8
        let tierLevel: TierLevel = .master
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT5.BunchesOfBlackberries(count: 2),
            VendorIngredients.DropOfHoney()
        ]
    }

    struct CupOfTastyFrosting: CraftIngredientProtocol {
        var count: Int = 1

        let name: String = "Cup of Tasty Frosting"
        let sellingPrice: Decimal = 0.86
        let xpGain: Int = 4
        let tierLevel: TierLevel = .master
        let ingredients: [BaseIngredientProtocol] = [
            CookerIngT4.CupOfWinterBarleyFlour(count: 2),
            VendorIngredients.CupOfFreshCream()
        ]
    }
}

extension CookerIngT5: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            BlackberryPieFilling(),
            CupOfTastyFrosting()
        ]
    }
}
