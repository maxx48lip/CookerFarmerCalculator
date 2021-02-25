//
//  Array+BaseIngredientProtocol.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 25.02.2021.
//

import Foundation

extension Array where Element == BaseIngredientProtocol {
    func removeDuplicates() -> [Element] {
        var result: [Element] = []
        for value in self {
            if !result.contains(where: { $0.isEqualTo(value) }) {
                result.append(value)
            } else {
                if let index = result.firstIndex(where: { $0.isEqualTo(value) }) {
                    var clonedElement = result[index]
                    clonedElement.count += value.count
                    result.remove(at: index)
                    result.append(clonedElement)
                }
            }
        }
        return result
    }

    func isContainCraftableElement() -> Bool {
        for value in self {
            if value is CraftIngredientProtocol {
                return true
            }
        }
        return false
    }

    func printAllIngredients() {
        self.forEach {
            let stringToPrint: String
            if let tierableElement = $0 as? CraftIngredientProtocol {
                stringToPrint = "(T\(tierableElement.tierLevel.rawValue)) \($0.name), count: \($0.count * 6), xp: \(tierableElement.xpGain * $0.count * 6)"
            } else if let tierableElement = $0 as? FarmerIngredientProtocol {
                stringToPrint = "(T\(tierableElement.tierLevel.rawValue)) \($0.name), count: \($0.count * 6)"
            } else {
                stringToPrint = "\($0.name), count: \($0.count * 6)"
            }
            print(stringToPrint)
        }
    }

    func sorted() -> SortedBaseIngredients {
        return SortedBaseIngredients(from: self)
    }
}
