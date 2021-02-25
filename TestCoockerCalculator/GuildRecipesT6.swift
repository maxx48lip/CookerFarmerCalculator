//
//  GuildRecipesT6.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct GuildRecipesT6 {
    struct LargeSupremeRepast: GuildRecipe {
        var guildXP: Int = 3600
        var guildRecipeType: GuildRecipeType = .large
        var xpGain: Int = 0
        var tierLevel: TierLevel = .supreme
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT6.JarOfMintSauce(count: 3),
            CookerIngT2.SpiciedPotatoes(count: 2),
            VendorIngredients.PorkShanks(count: 2),
            VendorIngredients.PinchOfMixedSpice(count: 2),
            VendorIngredients.PinchOfMixedHerbs(count: 2)
            
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct MediumSupremeRepast: GuildRecipe {
        var guildXP: Int = 1800
        var guildRecipeType: GuildRecipeType = .medium
        var xpGain: Int = 0
        var tierLevel: TierLevel = .supreme
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT6.BallOfDough(),
            CookerIngT6.JarOfBlackberryJam(),
            VendorIngredients.LargeBottleMilk(),
            VendorIngredients.CupOfFreshCream(),
            VendorIngredients.LumpOfButter()
            
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct SmallSupremeRepast: GuildRecipe {
        var guildXP: Int = 600
        var guildRecipeType: GuildRecipeType = .small
        var xpGain: Int = 0
        var tierLevel: TierLevel = .supreme
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT6.BowlOfMashedRoyalTaters(),
            FarmerT3.HeadOfCauliflower(),
            VendorIngredients.CutOfBeef(),
            VendorIngredients.PinchOfMixedHerbs()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }
}

extension GuildRecipesT6: OneTierGuildRecipes {
    func all() -> [GuildRecipe] {
        return [SmallSupremeRepast(), MediumSupremeRepast(), LargeSupremeRepast()]
    }
}
