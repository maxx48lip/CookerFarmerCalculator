//
//  GuildRecipesT3.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct GuildRecipesT3 {
    struct MediumExpertRepast: GuildRecipe {
        var guildXP: Int = 900
        var guildRecipeType: GuildRecipeType = .medium
        var xpGain: Int = 0
        var tierLevel: TierLevel = .expert
        var ingredients: [BaseIngredientProtocol] = [
            FarmerT2.Tatter(count: 2),
            FarmerT1.YellowOnion(count: 2),
            VendorIngredients.LumpOfButter()
        ]
        var sellingPrice: Decimal = 2.48
        var count: Int = 1
    }

    struct SmallExpertRepast: GuildRecipe {
        var guildXP: Int = 300
        var guildRecipeType: GuildRecipeType = .small
        var xpGain: Int = 0
        var tierLevel: TierLevel = .expert
        var ingredients: [BaseIngredientProtocol] = [
            FarmerT2.Tatter(count: 2),
            FarmerT1.YellowOnion(count: 2),
            VendorIngredients.LumpOfButter()
        ]
        var sellingPrice: Decimal = 2.48
        var count: Int = 1
    }
}

extension GuildRecipesT3: OneTierGuildRecipes {
    func all() -> [GuildRecipe] {
        return [SmallExpertRepast(), MediumExpertRepast()]
    }
}
