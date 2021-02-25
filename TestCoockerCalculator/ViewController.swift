//
//  ViewController.swift
//  TestCoockerCalculator
//
//  Created by Максим Павлов on 24.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let calc = GuildRecipesCalculator()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let allIngredientsSorted = calc.getAllGuildIngredientsSorted()
        //let allIngredientsSorted = calc.getAllBaseIngredientsSorted()
        let allIngredientsSorted = calc.getAllCraftIngredientsUsedToCraftGuildCurrencies().sorted()
        allIngredientsSorted.printAllIngredients()
    }
}

