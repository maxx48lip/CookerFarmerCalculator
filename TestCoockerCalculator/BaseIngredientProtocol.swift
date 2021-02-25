//
//  BaseIngredientProtocol.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 25.02.2021.
//

import Foundation

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

extension BaseIngredientProtocol {
    func isEqualTo(_ model: BaseIngredientProtocol) -> Bool {
        return self.name == model.name
    }
}
