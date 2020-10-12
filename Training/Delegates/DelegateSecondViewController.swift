//
//  DelegateSecondViewController.swift
//  Training
//
//  Created by Assaad Doumit on 10/12/20.
//

import UIKit

class DelegateSecondViewController: UIViewController {
    
    var delegateSecondViewControllerDelageta: DelegateSecondViewControllerDelageta?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func sendWithDelegates(_ sender: UIButton){
        let message = "Test"
        delegateSecondViewControllerDelageta?.didSendMessage(message)
        
        navigationController?.popViewController(animated: true)
    }
}

protocol DelegateSecondViewControllerDelageta {
    func didSendMessage(_ messege : String)
    
    
}
