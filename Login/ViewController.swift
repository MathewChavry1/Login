//
//  ViewController.swift
//  Login
//
//  Created by 8h on 1/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameText: UITextField!
    
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "Mathew", sender: sender)
    }
    
    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "Mathew", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.title = "Forgot Username"
        }else{
            segue.destination.navigationItem.title = "Welcome \(userNameText.text ?? "user")"
        }
    }
}

