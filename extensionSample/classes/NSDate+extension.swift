//
//  NSDate+extension.swift
//  extensionSample
//
//  Created by Leo Chang on 7/8/14.
//  Copyright (c) 2014 Perfectidea. All rights reserved.
//

import Foundation

let dayUnit : Double = 60 * 60 * 24
let hourUnit : Double = 60 * 60
let minUnit : Double = 60
let secondUnit : Double = 1

extension NSDate {
    
    func addDays(days : Double) -> NSDate {
        return self.dateByAddingTimeInterval(days * dayUnit)
    }
    
    func addHours(hours : Double) -> NSDate {
        return self.dateByAddingTimeInterval(hours * hourUnit)
    }
    
    func addMins(mins : Double) -> NSDate {
        return self.dateByAddingTimeInterval(mins * minUnit)
    }
    
    func addSeconds(seconds : Double) -> NSDate {
        return self.dateByAddingTimeInterval(seconds * secondUnit)
    }
    
    func addBydate(date : NSDate) -> NSDate {
        var interval : NSTimeInterval = self.timeIntervalSinceDate(date)
        return self.dateByAddingTimeInterval(interval)
    }
    
    func hasPastSinceToday() -> Bool {
        var interval : NSTimeInterval = self.timeIntervalSinceDate(NSDate.date())
        if interval < 0 { return true }
        return true
    }
    
    func toString() -> NSString {
        var formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter .stringFromDate(self)
    }
    
    func toFullString() -> NSString {
        var formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        return formatter .stringFromDate(self)
    }
    
    func toFullString(#GMT : NSString) -> NSString {
        var formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss " + GMT
        return formatter .stringFromDate(self)
    }
}