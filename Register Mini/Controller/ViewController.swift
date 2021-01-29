//
//  ViewController.swift
//  Register Mini
//
//  Created by IndratS on 29/01/21.
//  Copyright © 2021 IndratSaputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RegisterProtokol {
    func sendData(data: Register) {
        print(data)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func registerBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "segueRegisterForm", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueRegisterForm" {
            guard let rc = segue.destination as? RegisterVC else {return}
            rc.delegate = self
        }
    }
    
}

