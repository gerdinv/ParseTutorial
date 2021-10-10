//
//  ViewController.swift
//  ParseTutorial
//
//  Created by Gerdin Ventura on 10/9/21.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSignUp(_ sender: Any) {
        var user = PFUser()
        user.username = loginTextField.text
        user.password = passwordTextField.text
        
        // other fields can be set just like with PFObject
        user["phone"] = "415-392-0202"
          
          user.signUpInBackground {
            (succeeded: Bool, error: Error?) -> Void in
            if let error = error {
              let errorString = error.localizedDescription
              // Show the errorString somewhere and let the user try again.
                print("Error")
            } else {
              // Hooray! Let them use the app now.
                self.performSegue(withIdentifier: "sendToHomePage", sender: nil)
            }
          }
    }
    
    
    @IBAction func onLogin(_ sender: Any) {
        PFUser.logInWithUsername(inBackground:loginTextField.text!, password:passwordTextField.text!) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
            // Do stuff after successful login.
              self.performSegue(withIdentifier: "sendToHomePage", sender: nil)
          } else {
            // The login failed. Check error to see why.
              print("Loggin fail")
          }
        }
    }
    
}

