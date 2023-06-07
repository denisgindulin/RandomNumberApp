//
//  ViewController.swift
//  RandomNumberApp
//
//  Created by Денис Гиндулин on 07.06.2023.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    
    @IBOutlet var getRandomNumberButton: UIButton!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }

    //MARK: - IBActions
    @IBAction func getRandomNumberWhenButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
}

