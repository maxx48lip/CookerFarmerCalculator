//
//  FarmerT1.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT1 {
    struct YellowOnion: FarmerIngredientProtocol {
        let name: String = "Yellow Onion"
        let tierLevel: TierLevel = .apprentice
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.03
        var count: Int = 1
    }

    struct BundlesOfSpringBarley: FarmerIngredientProtocol {
        let name: String = "Bundles Of Spring Barley"
        let tierLevel: TierLevel = .apprentice
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.03
        var count: Int = 1
    }

    struct FreshCarrot: FarmerIngredientProtocol {
        let name: String = "Fresh Carrot"
        let tierLevel: TierLevel = .apprentice
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.03
        var count: Int = 1
    }
}
