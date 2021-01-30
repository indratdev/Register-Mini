//
//  ViewController.swift
//  Register Mini
//
//  Created by IndratS on 29/01/21.
//  Copyright © 2021 IndratSaputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RegisterProtokol {
    @IBOutlet weak var viewResult: UIView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideResult()
    }
    
    @IBAction func registerBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "segueRegisterForm", sender: nil)
        clearResult()
        hideResult()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueRegisterForm" {
            guard let rc = segue.destination as? RegisterVC else {return}
            rc.delegate = self
        }
    }
    
    
    
}


extension ViewController {
    func sendData(data: Register) {
        displayResult(result: data)
    }
    
    private func displayResult(result: Register) {
        firstNameLabel.text = "Your FirstName is \(result.firstName)"
        lastNameLabel.text = "Your Lastname is \(result.lastName)"
        ageLabel.text = "Your Age is \(result.age)"
        sexLabel.text = "Your Sex is \(result.sex)"
        addressLabel.text = "Your Address is \(result.address)"
        
        viewResult.isHidden = false
    }
    
    private func clearResult(){
        firstNameLabel.text = ""
        lastNameLabel.text = ""
        ageLabel.text = ""
        sexLabel.text = ""
        addressLabel.text = ""
    }
    
    private func hideResult(){
        viewResult.isHidden = true
    }
}

