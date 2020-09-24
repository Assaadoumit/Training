//
//  FirebaseAuthenticationViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/21/20.
//

import UIKit
import FirebaseAuth

class FirebaseAuthenticationViewController: UIViewController {
    // vars
    var verificationID:String?
    
    // outlets
    @IBOutlet weak var SendButton: UIButton!
    @IBOutlet weak var checkCode : UIButton!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var codeTextField: UITextField!
    
    
    // methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SendButton.setTitle("Send", for:.normal)
        codeTextField.isHidden = true
        checkCode.isHidden = true
    }
    
    func showVerificationUI() {
        self.phoneNumberTextField.isHidden = true
        self.SendButton.isHidden  = true
        self.codeTextField.isHidden = false
        self.checkCode.isHidden = false
    }
    
    func hideVerificationUI() {
        
    }
}


// MARK: - UI Actions
extension FirebaseAuthenticationViewController {
    @IBAction func SendButtonPressed(_ sender: Any) {
        if phoneNumberTextField.text?.isEmpty == true {
            print("Enter your phone number")
            
            return
        }
        let phoneNumber = "+961" + phoneNumberTextField.text!
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { (verificationID, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard error != nil else { return }
            
            
            
            self.verificationID = verificationID
            //
            //                UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
            self.showVerificationUI()
            print("success Sending")
        }
    }
    
    @IBAction func checkVerificationCode(_ sender  :Any){
        //        let verificationID = UserDefaults.standard.string(forKey: "authVerificationID")
        
        if self.codeTextField.text?.isEmpty == true {
            print("Enter your verification code!")
            
            return
        }
        
        view.endEditing(true)
        if let verificationCode = codeTextField.text {
            let credential = PhoneAuthProvider.provider().credential(withVerificationID: self.verificationID ?? "", verificationCode: verificationCode)
            Auth.auth().signIn(with:credential) { (user, error) in
                if let error = error {
                    print(error.localizedDescription)
                    self.codeTextField.text = "wrong code"
                        
                }else {
                    print("Verified successfully")
                    
                    try? Auth.auth().signOut()
                    
                }
            }
        }
        
    }
}

// MARK: - TextField delegate
extension FirebaseAuthenticationViewController: UITextFieldDelegate {
}


