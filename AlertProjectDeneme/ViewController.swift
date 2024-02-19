//
//  ViewController.swift
//  AlertProjectDeneme
//
//  Created by Ali serkan Boyracı  on 19.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Username not found!")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        } else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error!", messageInput: "Password not match!")
        } else {
            makeAlert(titleInput: "Success!", messageInput: "User saved!")
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}
//AKSAM BURAYA DIGER TUSLARI DA EKLEMELI BISEY OLUR MU DENEYELIM
// diger tuslardan nasil bi islem yapilabilir.
// tuslarin renkli olmasi onemli
