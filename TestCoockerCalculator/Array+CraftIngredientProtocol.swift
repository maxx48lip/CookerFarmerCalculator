//
//  Array+CraftIngredientProtocol.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 25.02.2021.
//

import Foundation

extension Array where Element == CraftIngredientProtocol {
    func sorted() -> SortedBaseIngredients {
        return SortedBaseIngredients(from: self)
    }
}
