//
//  FarmerT8.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT8 {
    struct BunchesOfTurnips: FarmerIngredientProtocol {
        let name: String = "Bunches of Turnips"
        let tierLevel: TierLevel = .eastemnet
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.24
        var count: Int = 1
    }
    
    struct BunchesOfRyeBerries: FarmerIngredientProtocol {
        let name: String = "Bunches of Rye Berries"
        let tierLevel: TierLevel = .eastemnet
        let xpGain: Int = 0
        let sellingPrice: Decimal = 1.98
        var count: Int = 1
    }

    struct BunchesOfCherries: FarmerIngredientProtocol {
        let name: String = "Bunches Of Cherries"
        let tierLevel: TierLevel = .eastemnet
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.24
        var count: Int = 1
    }
}
