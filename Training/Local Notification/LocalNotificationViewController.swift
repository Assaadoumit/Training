//
//  LocalNotificationViewController.swift
//  Training
//
//  Created by Assaad Doumit on 9/26/20.
//

import UIKit
import UserNotifications

class LocalNotificationViewController: UIViewController, UNUserNotificationCenterDelegate {
    
    @IBOutlet weak var textField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        center.requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
        }
        UNUserNotificationCenter.current().delegate = self

    }
    let center = UNUserNotificationCenter.current()
    
    @IBAction func sendNotification(){
        
        let numberOfSec:Int? = Int(textField.text!)
    
        
        let content = UNMutableNotificationContent()
        content.title = "Title is title"
        content.body = "This is the body"
        
        let date = Date().addingTimeInterval(TimeInterval(numberOfSec!))
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute,.second], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
    
        center.add(request) { (error) in
            
            print("request")
        }
        fatalError()
        
    }
    
}


