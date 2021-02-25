//
//  GuildRecipesT9.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct GuildRecipesT9 {
    struct LargeWestemnetRepast: GuildRecipe {
        var guildXP: Int = 5400
        var guildRecipeType: GuildRecipeType = .large
        var xpGain: Int = 0
        var tierLevel: TierLevel = .westemnet
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT9.VenisonSausage(),
            CookerIngT9.CupOfBakedBeans(),
            CookerIngT9.BowlOfVegetableStock(),
            FarmerT9.BunchOfKingsteadMushrooms(),
            CookerIngT8.BowlOfMashedTurnips()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct MediumWestemnetRepast: GuildRecipe {
        var guildXP: Int = 2700
        var guildRecipeType: GuildRecipeType = .medium
        var xpGain: Int = 0
        var tierLevel: TierLevel = .westemnet
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT9.JarOfPearPreserves(),
            FarmerT9.BunchOfPears(),
            VendorIngredients.DropOfWildflowerHoney(),
            CookerIngT8.CupOfRyeFlour()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct SmallWestemnetRepast: GuildRecipe {
        var guildXP: Int = 900
        var guildRecipeType: GuildRecipeType = .small
        var xpGain: Int = 0
        var tierLevel: TierLevel = .westemnet
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT9.VenisonSausage(),
            CookerIngT9.BowlOfVegetableStock(),
            FarmerT9.BunchOfBeans()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }
}

extension GuildRecipesT9: OneTierGuildRecipes {
    func all() -> [GuildRecipe] {
        return [SmallWestemnetRepast(), MediumWestemnetRepast(), LargeWestemnetRepast()]
    }
}
