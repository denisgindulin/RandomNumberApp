//
//  SettingsViewController.swift
//  RandomNumberApp
//
//  Created by Денис Гиндулин on 07.06.2023.
//

import UIKit

final class SettingsViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var minimumValueTextField: UITextField!
    @IBOutlet var maximumValueTextField: UITextField!
    
    //MARK: - Public Properties
    var minimumValue: String!
    var maximumValue: String!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTextField.text = minimumValue
        maximumValueTextField.text = maximumValue
    }
    
    //MARK: - IBActions
    @IBAction func cancelButtonDidTapped() {
        dismiss(animated: true)
    }
}
