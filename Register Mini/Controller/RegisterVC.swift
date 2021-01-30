//
//  RegisterVC.swift
//  Register Mini
//
//  Created by IndratS on 29/01/21.
//  Copyright © 2021 IndratSaputra. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var addressTV: UITextView!
    @IBOutlet weak var menSexBtn: UIButton!
    @IBOutlet weak var womenSexBtn: UIButton!
    
    var sex: String?
    var delegate: RegisterProtokol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func submitBtnPressed(_ sender: UIButton) {
        
        if let fn = firstNameTF.text, let ln = lastNameTF.text, let age = ageTF.text, let address1 = addressTV.text, let sex = self.sex {
            let data = Register(firstName: fn, lastName: ln, age: Int(age) ?? 0, sex: sex, address: address1)
            
            delegate?.sendData(data: data)
            navigationController?.popViewController(animated: true)
            dismiss(animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func sexBtnPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            menSexBtn.isSelected = true
            womenSexBtn.isSelected = false
            self.sex = menSexBtn.currentTitle
        } else {
            menSexBtn.isSelected = false
            womenSexBtn.isSelected = true
            self.sex = womenSexBtn.currentTitle
        }
        print("selected sex : \(self.sex ?? "null value")")
    }
}
