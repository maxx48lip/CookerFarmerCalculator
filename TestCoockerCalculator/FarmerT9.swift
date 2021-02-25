//
//  FarmerT9.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT9 {
    struct BunchOfBeans: FarmerIngredientProtocol {
        let name: String = "Bunch of Beans"
        let tierLevel: TierLevel = .westemnet
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.27
        var count: Int = 1
    }

    struct BunchOfKingsteadMushrooms: FarmerIngredientProtocol {
        let name: String = "Bunch Of Kingstead Mushrooms"
        let tierLevel: TierLevel = .westemnet
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.27
        var count: Int = 1
    }

    struct BunchOfPears: FarmerIngredientProtocol {
        let name: String = "Bunch of Pears"
        let tierLevel: TierLevel = .westemnet
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.27
        var count: Int = 1
    }
}
