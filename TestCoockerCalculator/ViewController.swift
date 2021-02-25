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
        let allIngredientsSorted = calc.getAllBaseIngredientsSorted()
        allIngredientsSorted.printAllIngredients()
        
        print(calc.getAllGuildXPForWeek())
    }
}

