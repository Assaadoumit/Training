//
//  InAppNotificationViewController.swift
//  Training
//
//  Created by Assaad Doumit on 10/8/20.
//

import UIKit

class InAppNotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(notificationFired(notification:)), name: NSNotification.Name("SendNotification"), object: nil)
        label.text = ""
    }
    
    @objc func notificationFired(notification: Notification){
        let userInfo = notification.userInfo as! Dictionary<String, AnyObject>
        
        if let data = userInfo["data"] as? String{
            self.label.text = data
            self.view.backgroundColor = UIColor.blue
            
        }
        

        
        print("notification received")
    }
    @IBOutlet weak var label : UILabel!
    
    @IBAction func buttonPressed(_ sender : UIButton){
        let secondViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }

}
