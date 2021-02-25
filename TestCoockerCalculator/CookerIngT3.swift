//
//  CookerIngT3.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT3 {
    struct CutOfMarinatedBeef: CraftIngredientProtocol {
        var count: Int = 1

        let name: String = "Cut Of Marinated Beef"
        let sellingPrice: Decimal = 0.0
        let xpGain: Int = 6
        let tierLevel: TierLevel = .expert
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT3.GreenOnion(),
            VendorIngredients.CutOfBeef(),
            VendorIngredients.BagOfSalt()
        ]
    }
}

extension CookerIngT3: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            CutOfMarinatedBeef()
        ]
    }
}
