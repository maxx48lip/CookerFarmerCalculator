//
//  GuildRecipesT4.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct GuildRecipesT4 {
    struct MediumArtisanRepast: GuildRecipe {
        var guildXP: Int = 1200
        var guildRecipeType: GuildRecipeType = .medium
        var xpGain: Int = 0
        var tierLevel: TierLevel = .artisan
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT1.PieCrust(count: 2),
            CookerIngT4.ApplePieFilling(count: 2),
            FarmerT4.BunchesOfStrawberries(count: 3)
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct SmallArtisanRepast: GuildRecipe {
        var guildXP: Int = 400
        var guildRecipeType: GuildRecipeType = .small
        var xpGain: Int = 0
        var tierLevel: TierLevel = .artisan
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT4.MarinatedChickenCutlet(),
            FarmerT3.HeadOfCauliflower(),
            VendorIngredients.PouchOfFineSeasonings(),
            VendorIngredients.BagOfSalt()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }
}

extension GuildRecipesT4: OneTierGuildRecipes {
    func all() -> [GuildRecipe] {
        return [SmallArtisanRepast(), MediumArtisanRepast()]
    }
}
