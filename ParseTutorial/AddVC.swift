//
//  AddVC.swift
//  ParseTutorial
//
//  Created by Gerdin Ventura on 10/9/21.
//

import UIKit
import Parse

class AddVC: UIViewController {

    @IBOutlet weak var cheater: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var languageField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func onSave(_ sender: Any) {
        let gameScore = PFObject(className:"GameInfo")
        gameScore["score"] = 1337
        gameScore["playerName"] = nameField.text
        gameScore["cheatMode"] = false
        gameScore.saveInBackground { (succeeded, error)  in
            if (succeeded) {
                // The object has been saved.
                print("Saved")
            } else {
                // There was a problem, check error.description
                print("ERROR SAVING")
            }
        }
    }
    
}
