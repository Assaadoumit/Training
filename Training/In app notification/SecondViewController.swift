//
//  SecondViewController.swift
//  Training
//
//  Created by Assaad Doumit on 10/8/20.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBOutlet weak var nameTextField : UITextField!
    @IBOutlet var sendNotifiButoon : UIButton!
    
    
    @IBAction func sendNotification(_ sender : UIButton){
        if nameTextField.text == ""{
        }else{
        var dict:Dictionary<String, AnyObject> = Dictionary()
        dict.updateValue(nameTextField.text as AnyObject, forKey: "data")
        NotificationCenter.default.post(name: NSNotification.Name("SendNotification"), object: nil, userInfo: dict)
        _ = self.navigationController?.popViewController(animated: true)
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
