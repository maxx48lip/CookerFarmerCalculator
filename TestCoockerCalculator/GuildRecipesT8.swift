//
//  GuildRecipesT8.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct GuildRecipesT8 {
    struct LargeEastemnetRepast: GuildRecipe {
        var guildXP: Int = 4800
        var guildRecipeType: GuildRecipeType = .large
        var xpGain: Int = 0
        var tierLevel: TierLevel = .eastemnet
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT8.BowlOfDuckStock(count: 3),
            VendorIngredients.UncookedDuckBreasts(count: 3),
            CookerIngT8.BowlOfMashedTurnips(),
            VendorIngredients.PinchOfPepper(),
            FarmerT7.BunchesOfLeeks()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct MediumEastemnetRepast: GuildRecipe {
        var guildXP: Int = 2400
        var guildRecipeType: GuildRecipeType = .medium
        var xpGain: Int = 0
        var tierLevel: TierLevel = .eastemnet
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT8.CupOfRyeFlour(count: 2),
            CookerIngT8.JarOfCherryJam(),
            VendorIngredients.HandOfMaxedNuts(),
            VendorIngredients.LumpOfButter()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct SmallEastemnetRepast: GuildRecipe {
        var guildXP: Int = 800
        var guildRecipeType: GuildRecipeType = .small
        var xpGain: Int = 0
        var tierLevel: TierLevel = .eastemnet
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT8.BowlOfStewedTurnips(count: 2),
            VendorIngredients.PinchOfPepper(count: 2),
            VendorIngredients.LumpOfButter()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }
}

extension GuildRecipesT8: OneTierGuildRecipes {
    func all() -> [GuildRecipe] {
        return [SmallEastemnetRepast(), MediumEastemnetRepast(), LargeEastemnetRepast()]
    }
}
