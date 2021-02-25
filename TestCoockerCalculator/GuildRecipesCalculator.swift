//
//  GuildRecipesCalculator.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 25.02.2021.
//

import Foundation

final class GuildRecipesCalculator {
    /// Все гильдейские рецепты
    func getAllGuildRecipes() -> [GuildRecipe] {
        let allGroupedGuildRecipes: [OneTierGuildRecipes] = TierLevel.allCases.compactMap { $0.guildRecipes }
        let allGuildRecipes = allGroupedGuildRecipes.map { $0.all() }
        var result: [GuildRecipe] = []
        allGuildRecipes.forEach { element in
            element.forEach { result.append($0) }
        }
        return result
    }

    /// Все гильдейские рецепты за неделю
    func getAllGuildRecipesForWeek() -> [GuildRecipe] {
        let result = getAllGuildRecipes().map { element -> GuildRecipe in
            var resultedElement = element
            resultedElement.count = element.guildRecipeType.couldownCoefficient
            return resultedElement
        }
        return result
    }

    /// Количество XP за неделю
    func getAllGuildXPForWeek() -> Int {
        var allGuildXPByWeek: Int = 0
        getAllGuildRecipes().forEach {
            allGuildXPByWeek += $0.guildXP * $0.guildRecipeType.couldownCoefficient
        }
        return allGuildXPByWeek
    }

    
    /// Все ингредиенты, для гильд рецептов, из которых крафтятся гильд рецепты (Должны лежать в иинвентаре на момент крафта гильд рецептов)
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

    func getAllBaseIngredients() -> [BaseIngredientProtocol] {
        let allGuildedIngredients = getAllGuildedIngredients()
        var result: [BaseIngredientProtocol] = allGuildedIngredients
        while result.isContainCraftableElement() {
            for element in result {
                if let element = element as? CraftIngredientProtocol {
                    if let index = result.firstIndex(where: { $0.isEqualTo(element) }) {
                        result.remove(at: index)
                        for _ in 0..<element.count {
                            result.append(contentsOf: element.ingredients)
                        }
                    }
                }
            }
        }
        return result.removeDuplicates().sorted(by: { $0.count > $1.count })
    }

    func getAllCraftIngredientsUsedToCraftGuildCurrencies() -> [CraftIngredientProtocol] {
        let allGuildedIngredients = getAllGuildedIngredients()
        var temproraryArrayToCalculate: [BaseIngredientProtocol] = allGuildedIngredients
        var result: [BaseIngredientProtocol] = allGuildedIngredients
        while temproraryArrayToCalculate.isContainCraftableElement() {
            for element in result {
                if let element = element as? CraftIngredientProtocol {
                    if let index = temproraryArrayToCalculate.firstIndex(where: { $0.isEqualTo(element) }) {
                        temproraryArrayToCalculate.remove(at: index)
                        for _ in 0..<element.count {
                            temproraryArrayToCalculate.append(contentsOf: element.ingredients)
                            result.append(contentsOf: element.ingredients)
                        }
                    }
                }
            }
        }

        return (result.filter({ $0 is CraftIngredientProtocol }))
            .removeDuplicates()
            .sorted(by: { $0.count > $1.count })
            as? [CraftIngredientProtocol] ?? []
    }
    
    func getAllBaseIngredientsSorted() -> SortedBaseIngredients {
        return SortedBaseIngredients(from: getAllBaseIngredients())
    }

    func getAllGuildIngredientsSorted() -> SortedBaseIngredients {
        return SortedBaseIngredients(from: getAllGuildedIngredients())
    }
}
