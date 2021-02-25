//
//  FarmerT6.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT6 {
    struct BundlesOfMintLeaves: FarmerIngredientProtocol {
        let name: String = "Bundle of Mint Leaves"
        let tierLevel: TierLevel = .supreme
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.18
        var count: Int = 1
    }

    struct RoyalTater: FarmerIngredientProtocol {
        let name: String = "Royal Tater"
        let tierLevel: TierLevel = .supreme
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.18
        var count: Int = 1
    }
}
