//
//  IngredientProtocols.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

protocol CraftIngredientProtocol: BaseIngredientProtocol {
    var xpGain: Int { get }
    var tierLevel: TierLevel { get }
    var ingredients: [BaseIngredientProtocol] { get }
}

protocol FarmerIngredientProtocol: BaseIngredientProtocol {
    var xpGain: Int { get }
    var tierLevel: TierLevel { get }
}

protocol VendorIngredientProtocol: BaseIngredientProtocol {
    /// Цена покупки у вендора
    var purchasePrice: Decimal { get }
}
