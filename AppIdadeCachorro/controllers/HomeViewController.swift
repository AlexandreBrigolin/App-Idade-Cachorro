//
//  ViewController.swift
//  AppIdadeCachorro
//
//  Created by Alexandre Brigolin on 30/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var calculateAgeBotton: UIButton!
    
   private var ageResult: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUiElements()
    }

    func configUiElements() {
        logoImageView.image = UIImage(named: "ImagemCachorro")
        descriptionLabel.text = MyString.description
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        ageTextField.placeholder = MyString.textField
        ageTextField.keyboardType = .numberPad
        ageTextField.delegate = self
        calculateAgeBotton.setTitle(MyString.title, for: .normal)
        calculateAgeBotton.isEnabled = false
        view.backgroundColor = .gray
        calculateAgeBotton.tintColor = .black
        
    }
    
    private func validateTextField() {
        guard let age = ageTextField.text?.isEmpty else { return }
        calculateAgeBotton.isEnabled = !age }
    
    
    @IBAction func calculateAge(_ sender: UIButton) {
        guard let age = ageTextField.text,
              let ageInt = Int(age) else { return }
        ageResult = ageInt * 7
        
        
        print(ageResult)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultViewControler" {
            let destinationViewcontroller = segue.destination as!
            ResultViewControler
            destinationViewcontroller.receivedAgeResult = String(ageResult)
            ageTextField.text = ""
    }
        
}
    
}
extension HomeViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        validateTextField()
    }
}
