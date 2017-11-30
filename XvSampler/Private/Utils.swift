//
//  Utils.swift
//  XvSampler
//
//  Created by Jason Snell on 11/29/17.
//  Copyright © 2017 Jason J. Snell. All rights reserved.
//

import Foundation

class Utils {
    
    //MARK: - NOTIFICATIONS -
    class func postNotification(name:String, userInfo:[AnyHashable : Any]?){
        
        let notification:Notification.Name = Notification.Name(rawValue: name)
        NotificationCenter.default.post(
            name: notification,
            object: nil,
            userInfo: userInfo)
    }
    
    
    //MARK: - NUMBER UTILS -
    
    public class func getRandomInt(within: Int) -> Int {
        return Int(arc4random_uniform(UInt32(within)))
    }

}
