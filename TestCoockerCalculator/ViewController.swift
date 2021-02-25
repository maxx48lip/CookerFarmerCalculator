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
        let allIngredients = calc.getAllGuildedIngredients()
        let testStrings = allIngredients.map { element -> String in
            return "\(element.name), count: \(element.count)"
        }
        testStrings.forEach {
            print($0)
        }
    }
}

