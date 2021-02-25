//
//  FarmerT7.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT7 {
    struct BunchesOfLeeks: FarmerIngredientProtocol {
        let name: String = "Bunches of Leeks"
        let tierLevel: TierLevel = .westfold
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.21
        var count: Int = 1
    }

    struct BundlesOfBlackBarley: FarmerIngredientProtocol {
        let name: String = "Bundles of Black Barley"
        let tierLevel: TierLevel = .westfold
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.21
        var count: Int = 1
    }
}
