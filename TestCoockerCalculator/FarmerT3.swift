//
//  FarmerT3.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT3 {
    struct GreenOnion: FarmerIngredientProtocol {
        let name: String = "Green Onion"
        let tierLevel: TierLevel = .expert
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.09
        var count: Int = 1
    }

    struct HeadOfCauliflower: FarmerIngredientProtocol {
        let name: String = "Head of Cauliflower"
        let tierLevel: TierLevel = .expert
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.09
        var count: Int = 1
    }
}
