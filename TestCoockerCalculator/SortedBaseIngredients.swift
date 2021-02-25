//
//  SortedBaseIngredients.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 25.02.2021.
//

import Foundation

struct SortedBaseIngredients {
    let vendorIngredients: [BaseIngredientProtocol]
    let farmerIngredients: [BaseIngredientProtocol]
    let craftableIngredients: [BaseIngredientProtocol]

    init(from nonSortedIngredients: [BaseIngredientProtocol]) {
        self.farmerIngredients = nonSortedIngredients.filter({ $0 is FarmerIngredientProtocol })
        self.vendorIngredients = nonSortedIngredients.filter({ $0 is VendorIngredientProtocol })
        self.craftableIngredients = nonSortedIngredients.filter({ $0 is CraftIngredientProtocol })
    }

    func printAllIngredients() {
        if !craftableIngredients.isEmpty {
            print("Craftable Ingredients:\n")
            craftableIngredients.printAllIngredients()
            print("\n\n ================= \n\n")
        }
        if !farmerIngredients.isEmpty {
            print("Farmer Ingredients:\n")
            farmerIngredients.printAllIngredients()
            print("\n\n ================= \n\n")
        }
        if !vendorIngredients.isEmpty {
            print("Vendor Ingredients:\n")
            vendorIngredients.printAllIngredients()
        }
    }
}
