//
//  IngredientProtocol.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

enum TierLevel: Int {
    case apprentice = 1
    case jouneyman = 2
    case expert = 3
    case artisan = 4
    case master = 5
    case supreme = 6
    case westfold = 7
    case eastemnet = 8
    case westemnet = 9
    case anorien = 10
    case doomfold = 11
    case ironfold = 12
    case minasIthil = 13
}

protocol CraftIngredientProtocol: BaseIngredientProtocol {
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
}
