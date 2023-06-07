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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsViewController = segue.destination as? SettingsViewController else { return }
        settingsViewController.minimumValue = minimumValueLabel.text
        settingsViewController.maximumValue = maximumValueLabel.text
    }

    //MARK: - IBActions
    @IBAction func getRandomNumberWhenButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsViewController = segue.source as? SettingsViewController else { return }
        minimumValueLabel.text = settingsViewController.minimumValueTextField.text
        maximumValueLabel.text = settingsViewController.maximumValueTextField.text
        randomValueLabel.text = "?"
    }
}

