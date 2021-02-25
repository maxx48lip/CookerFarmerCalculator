//
//  FarmerT4.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT4 {
    struct ShireApple: FarmerIngredientProtocol {
        let name: String = "Shire Apple"
        let tierLevel: TierLevel = .artisan
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.12
        var count: Int = 1
    }

    struct BunchesOfStrawberries: FarmerIngredientProtocol {
        let name: String = "Bunches Of Strawberries"
        let tierLevel: TierLevel = .artisan
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.12
        var count: Int = 1
    }

    struct BundleOfWinterBarley: FarmerIngredientProtocol {
        let name: String = "Bundle of Winter Barley"
        let tierLevel: TierLevel = .artisan
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.12
        var count: Int = 1
    }
}
