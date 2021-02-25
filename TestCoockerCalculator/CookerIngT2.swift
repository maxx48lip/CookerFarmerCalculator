//
//  CookerIngT2.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT2 {
    struct SpiciedPotatoes: CraftIngredientProtocol {
        let name: String = "Spicied Potatoes"
        let tierLevel: TierLevel = .jouneyman
        let xpGain: Int = 4
        let sellingPrice: Decimal = 0.15
        var count: Int = 1
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT2.Tatter(count: 2),
            VendorIngredients.PinchOfShireSeasonings()
        ]
    }
}

extension CookerIngT2: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            SpiciedPotatoes()
        ]
    }
}
