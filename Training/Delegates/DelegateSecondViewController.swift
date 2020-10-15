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
    let message = "Test"
    let messageCompletionHandler = "messageCompletionHandler"
    @IBAction func sendWithDelegates(_ sender: UIButton){
        
        delegateSecondViewControllerDelageta?.didSendMessage(message)
        
        navigationController?.popViewController(animated: true)
        completionHandler?(messageCompletionHandler)
    }
    
    public var completionHandler :((String?)-> Void)?
}

protocol DelegateSecondViewControllerDelageta {
    func didSendMessage(_ messege : String)
    
    
}
