//
//  GuildRecipesProtocol.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

protocol OneTierGuildRecipes {
    func all() -> [GuildRecipe]
}

protocol GuildRecipe: CraftIngredientProtocol {
    var guildRecipeType: GuildRecipeType { get }
    var guildXP: Int { get }
}

extension GuildRecipe {
    var name: String {
        "(\(tierLevel.rawValue)) - \(guildRecipeType.name) \(tierLevel.name) Repast"
    }
}

enum GuildRecipeType {
    case large
    case medium
    case small

    var name: String {
        return String(describing: self).capitalized
    }

    var couldownCoefficient: Int {
        switch self {
        case .large: return 1
        case .medium: return 2
        case .small: return 7
        }
    }
}
