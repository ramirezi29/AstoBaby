//
//  DateHelper.swift
//  AstroBaby
//
//  Created by Jared Warren on 3/15/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import Foundation

extension Date {
    
    var mmddyy: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
    
    var mmmmd: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.dateFormat = "MMMM d"
        return formatter.string(from: self)
    }
    
    var subtract38Weeks: Date {
        return self.addingTimeInterval(-22980000.0)
    }
    
    var add15Days: Date {
        return self.addingTimeInterval(1296000.0)
    }
}
