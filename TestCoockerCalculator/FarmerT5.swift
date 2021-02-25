//
//  FarmerT5.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT5 {
    struct BunchesOfBlackberries: FarmerIngredientProtocol {
        let name: String = "Bunches Of Blackberries"
        let tierLevel: TierLevel = .master
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.15
        var count: Int = 1
    }

    struct GoldenShireTater: FarmerIngredientProtocol {
        let name: String = "Golden Shire Tater"
        let tierLevel: TierLevel = .master
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.15
        var count: Int = 1
    }
}
