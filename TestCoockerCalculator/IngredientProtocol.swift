//
//  IngredientProtocol.swift
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

protocol BaseIngredientProtocol {
    /// Название ингредиента
    var name: String { get }
    /// Цена продажи
    var sellingPrice: Decimal { get }
    /// Количество
    var count: Int { get set }

    init(count: Int)
    init()
}

extension BaseIngredientProtocol {
    init(count: Int) {
        self.init()
        self.count = count
    }
}
