//
//  File.swift
//  testin frame work
//
//  Created by Assaad Doumit on 10/9/20.
//

import Foundation

public class randomGenerator{
    
    private init() {}
    
    public static func string() -> String{
        return UUID().uuidString
    }
    
    public static func number() -> Int{
        return Int(arc4random())
    }
}
