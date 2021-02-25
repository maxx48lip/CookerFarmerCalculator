//
//  GuildRecipesCalculator.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 25.02.2021.
//

import Foundation

final class GuildRecipesCalculator {
    func getAllGuildRecipes() -> [GuildRecipe] {
        let allGroupedGuildRecipes: [OneTierGuildRecipes] = TierLevel.allCases.compactMap { $0.guildRecipes }
        let allGuildRecipes = allGroupedGuildRecipes.map { $0.all() }
        var result: [GuildRecipe] = []
        allGuildRecipes.forEach { element in
            element.forEach { result.append($0) }
        }
        return result
    }

    func getAllGuildXPForWeek() -> Int {
        var allGuildXPByWeek: Int = 0
        getAllGuildRecipes().forEach {
            allGuildXPByWeek += $0.guildXP * $0.guildRecipeType.couldownCoefficient
        }
        return allGuildXPByWeek
    }

    func getAllGuildRecipesForWeek() -> [GuildRecipe] {
        let result = getAllGuildRecipes().map { element -> GuildRecipe in
            var resultedElement = element
            resultedElement.count = element.guildRecipeType.couldownCoefficient
            return resultedElement
        }
        return result
    }

    func getAllGuildedIngredients() -> [BaseIngredientProtocol] {
        let allIngredientsArrays = getAllGuildRecipesForWeek().map { guildRecipe -> [BaseIngredientProtocol] in
            let ingredientsByOneRecipe = guildRecipe.ingredients
            var multiplicatedIngredients: [BaseIngredientProtocol] = []
            for _ in 0..<guildRecipe.count {
                multiplicatedIngredients.append(contentsOf: ingredientsByOneRecipe)
            }
            return multiplicatedIngredients
        }
        var allIngredients: [BaseIngredientProtocol] = []
        allIngredientsArrays.forEach { element in
            element.forEach { allIngredients.append($0) }
        }
        return allIngredients.removeDuplicates().sorted(by: { $0.count > $1.count })
    }
    
//    func getAllBaseIngredients() -> [BaseIngredientProtocol] {
//        let allGuildedIngredients = getAllGuildedIngredients()
//        guard let allVendorIngredientsFromGuildedRecipes = allGuildedIngredients
//                .filter({ $0 is VendorIngredientProtocol }) as? [VendorIngredientProtocol],
//        let allCraftableIngredientsFromGuildedRecipes = allGuildedIngredients
//            .filter({ $0 is CraftIngredientProtocol }) as? [CraftIngredientProtocol],
//        let allFarmerIngredientsFromGuildedRecipes = allGuildedIngredients
//            .filter({ $0 is FarmerIngredientProtocol }) as? [FarmerIngredientProtocol] else { return [] }
//
//        let allIngredientsFromCraftableIngredients = allCraftableIngredientsFromGuildedRecipes.map { $0.ingredients }
//        let allVendorIngredientsFromCraftableIngredients = allIngredientsFromCraftableIngredients
//            .filter({ $0 is VendorIngredientProtocol })
//        let allCraftableIngredientsFromCraftableIngredients = allIngredientsFromCraftableIngredients
//            .filter({ $0 is CraftIngredientProtocol })
//        let allFarmerIngredientsFromGCraftableIngredients = allGuildedIngredients
//            .filter({ $0 is FarmerIngredientProtocol }) as? [FarmerIngredientProtocol] else { return [] }
//
//        return allIngredients.removeDuplicates().sorted(by: { $0.count > $1.count })
//    }

//    func getAllUncraftableIngredients() -> [BaseIngredientProtocol] {
//        let allIngredientsArrays = getAllGuildRecipes().map { $0.ingredients }
//        var allIngredients: [BaseIngredientProtocol] = []
//        allIngredientsArrays.forEach { element in
//            element.forEach { allIngredients.append($0) }
//        }
//        return allIngredients.removeDuplicates().sorted(by: { $0.count > $1.count })
//    }
}

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
}

extension BaseIngredientProtocol {
    func isEqualTo(_ model: BaseIngredientProtocol) -> Bool {
        return self.name == model.name
    }
}
