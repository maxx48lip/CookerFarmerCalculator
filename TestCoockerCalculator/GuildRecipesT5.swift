//
//  GuildRecipesT5.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

struct GuildRecipesT5 {
    struct LargeMasterRepast: GuildRecipe {
        var guildXP: Int = 3000
        var guildRecipeType: GuildRecipeType = .large
        var xpGain: Int = 0
        var tierLevel: TierLevel = .master
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT1.PieCrust(count: 3),
            CookerIngT5.BlackberryPieFilling(count: 3),
            CookerIngT5.CupOfTastyFrosting(count: 3),
            VendorIngredients.CupOfFreshCream(),
            VendorIngredients.LargeBottleMilk()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct MediumMasterRepast: GuildRecipe {
        var guildXP: Int = 1500
        var guildRecipeType: GuildRecipeType = .medium
        var xpGain: Int = 0
        var tierLevel: TierLevel = .master
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT1.PieCrust(),
            CookerIngT5.CupOfTastyFrosting(),
            CookerIngT4.CupOfWinterBarleyFlour(),
            VendorIngredients.StalkRhubarb(),
            VendorIngredients.ChikenEgg()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }

    struct SmallMasterRepast: GuildRecipe {
        var guildXP: Int = 500
        var guildRecipeType: GuildRecipeType = .small
        var xpGain: Int = 0
        var tierLevel: TierLevel = .master
        var ingredients: [BaseIngredientProtocol] = [
            CookerIngT5.CupOfTastyFrosting(),
            FarmerT5.BunchesOfBlackberries(count: 2),
            CookerIngT4.CupOfWinterBarleyFlour(),
            VendorIngredients.DropOfFineCloverHoney()
        ]
        var sellingPrice: Decimal = 0
        var count: Int = 1
    }
}

extension GuildRecipesT5: OneTierGuildRecipes {
    func all() -> [GuildRecipe] {
        return [SmallMasterRepast(), MediumMasterRepast(), LargeMasterRepast()]
    }
}
