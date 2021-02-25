//
//  CookerIngT4.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct CookerIngT4 {
    struct ApplePieFilling: CraftIngredientProtocol {
        var count: Int = 1

        let name: String = "Apple Pie Filling"
        let sellingPrice: Decimal = 0.58
        let xpGain: Int = 4
        let tierLevel: TierLevel = .artisan
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT4.ShireApple(count: 2),
            VendorIngredients.PinchOfCinnamon()
        ]
    }

    struct MarinatedChickenCutlet: CraftIngredientProtocol {
        var count: Int = 1

        let name: String = "Marinated Chicken Cutlet"
        let sellingPrice: Decimal = 0.12
        let xpGain: Int = 4
        let tierLevel: TierLevel = .artisan
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT3.GreenOnion(),
            VendorIngredients.PinchOfCinnamon()
        ]
    }

    struct CupOfWinterBarleyFlour: CraftIngredientProtocol {
        var count: Int = 1

        let name: String = "Cup Of Winter Barley Flour"
        let sellingPrice: Decimal = 0.58
        let xpGain: Int = 4
        let tierLevel: TierLevel = .artisan
        let ingredients: [BaseIngredientProtocol] = [
            FarmerT4.BundleOfWinterBarley(count: 2)
        ]
    }
}

extension CookerIngT4: CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol] {
        return [
            ApplePieFilling(),
            MarinatedChickenCutlet(),
            CupOfWinterBarleyFlour()
        ]
    }
}
