//
//  FarmerT2.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct FarmerT2 {
    struct Tatter: FarmerIngredientProtocol {
        let name: String = "Tatter"
        let tierLevel: TierLevel = .jouneyman
        let xpGain: Int = 0
        let sellingPrice: Decimal = 0.06
        var count: Int = 1
    }
}
