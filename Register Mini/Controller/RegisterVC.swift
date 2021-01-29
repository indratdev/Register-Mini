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
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func submitBtnPressed(_ sender: UIButton) {
        
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
        print("selected sex : \(self.sex)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
