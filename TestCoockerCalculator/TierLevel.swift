//
//  TierLevel.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import Foundation

enum TierLevel: Int, CaseIterable {
    case apprentice = 1
    case jouneyman = 2
    case expert = 3
    case artisan = 4
    case master = 5
    case supreme = 6
    case westfold = 7
    case eastemnet = 8
    case westemnet = 9
    case anorien = 10
    case doomfold = 11
    case ironfold = 12
    case minasIthil = 13

    init?(fromTierNumber: Int) {
        switch fromTierNumber {
        case 1: self = .apprentice
        case 2: self = .jouneyman
        case 3: self = .expert
        case 4: self = .artisan
        case 5: self = .master
        case 6: self = .supreme
        case 7: self = .westfold
        case 8: self = .eastemnet
        case 9: self = .westemnet
        case 10: self = .anorien
        case 11: self = .doomfold
        case 12: self = .ironfold
        case 13: self = .minasIthil
        default: return nil
        }
    }

    var guildRecipes: OneTierGuildRecipes? {
        switch self {
        case .apprentice: return nil
        case .jouneyman: return nil
        case .expert: return GuildRecipesT3()
        case .artisan: return GuildRecipesT4()
        case .master: return GuildRecipesT5()
        case .supreme: return GuildRecipesT6()
        case .westfold: return GuildRecipesT7()
        case .eastemnet: return GuildRecipesT8()
        case .westemnet: return GuildRecipesT9()
        case .anorien: return nil
        case .doomfold: return nil
        case .ironfold: return nil
        case .minasIthil: return nil
        }
    }

    var craftableIngredients: CraftableTierLevel? {
        switch self {
        case .apprentice: return CookerIngT1()
        case .jouneyman: return CookerIngT2()
        case .expert: return CookerIngT3()
        case .artisan: return CookerIngT4()
        case .master: return CookerIngT5()
        case .supreme: return CookerIngT6()
        case .westfold: return CookerIngT7()
        case .eastemnet: return CookerIngT8()
        case .westemnet: return CookerIngT9()
        case .anorien: return nil
        case .doomfold: return nil
        case .ironfold: return nil
        case .minasIthil: return nil
        }
    }

    var name: String {
        return String(describing: self).capitalized
    }
}

protocol CraftableTierLevel {
    func allUsefullIngredients() -> [CraftIngredientProtocol]
}
