//
//  GuildRecipesT7.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct GuildRecipesT7 {
    struct LargeWestfoldRepast: GuildRecipe {
        var guildXP: Int = 4200
        var guildRecipeType: GuildRecipeType = .large
        var xpGain: Int = 0
        var tierLevel: TierLevel = .westfold
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT7.BowlOfLeekStock(count: 3),
            CookerIngT7.CupOfBreadCrumbs(count: 3),
            CookerIngT7.LoafOfBarleyBread(),
            VendorIngredients.Oxtail(),
            VendorIngredients.LargeBottleMilk()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct MediumWestfoldRepast: GuildRecipe {
        var guildXP: Int = 2100
        var guildRecipeType: GuildRecipeType = .medium
        var xpGain: Int = 0
        var tierLevel: TierLevel = .westfold
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT7.LoafOfBarleyBread(count: 2),
            CookerIngT7.CupOfBlackBarleyFlour(count: 2),
            VendorIngredients.BakingSeed(),
            VendorIngredients.LumpOfButter(),
            VendorIngredients.ChikenEgg()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct SmallWestfoldRepast: GuildRecipe {
        var guildXP: Int = 700
        var guildRecipeType: GuildRecipeType = .small
        var xpGain: Int = 0
        var tierLevel: TierLevel = .westfold
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT7.CupOfOatmeal(),
            CookerIngT7.CupOfBlackBarleyFlour(),
            VendorIngredients.PieceOfGoatCheese(),
            VendorIngredients.LargeBottleMilk(),
            VendorIngredients.ChikenEgg()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }
}

extension GuildRecipesT7: OneTierGuildRecipes {
    func all() -> [GuildRecipe] {
        return [SmallWestfoldRepast(), MediumWestfoldRepast(), LargeWestfoldRepast()]
    }
}
