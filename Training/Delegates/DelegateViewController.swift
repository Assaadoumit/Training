//
//  DelegateViewController.swift
//  Training
//
//  Created by Assaad Doumit on 10/12/20.
//

import UIKit

class DelegateViewController: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var label:UILabel!
    
    @IBAction func nextButonPressed(_ sender:UIButton){
        let vc = self.storyboard?.instantiateViewController(identifier: "DelegateSecondViewController") as! DelegateSecondViewController
        
        vc.delegateSecondViewControllerDelageta = self
        navigationController?.pushViewController(vc, animated: true)
    }
//    func completion(){
//        let vc = self.storyboard?.instantiateViewController(identifier: "DelegateSecondViewController") as! DelegateSecondViewController
//        vc.completionHandler = { text in
//            self.label.text = text
//        }
//    }
}
extension DelegateViewController : DelegateSecondViewControllerDelageta{
    func didSendMessage(_ messege: String) {
        label.text = messege
    }
    
    
}
