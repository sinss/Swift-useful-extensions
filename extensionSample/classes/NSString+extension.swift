//
//  NSString+extension.swift
//  extensionSample
//
//  Created by Leo Chang on 7/8/14.
//  Copyright (c) 2014 Perfectidea. All rights reserved.
//

import Foundation

extension NSString {
    
    class func getDisplayApplicationName() -> NSString {
        var info : NSDictionary = NSBundle.mainBundle().infoDictionary
        return info["CFBundleDisplayName"] as NSString
    }
    
    /**
    
    */
    func toDate() -> NSDate {
        var formatter : NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.dateFromString(self)
    }
    
    /**
    
    */
    func toEndOfDate() -> NSDate {
        var formatter : NSDateFormatter = NSDateFormatter();
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        let dateString = NSString(format: "%@ 23:59:59", self)
        return formatter.dateFromString(dateString)
    }
    
    /**
    return a date object from a full date string
    */
    func toFullDate() -> NSDate {
        var formatter : NSDateFormatter = NSDateFormatter();
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        return formatter.dateFromString(self)
    }
    
    /**
    Check this string is pure integer or not
    */
    func isPureInt() -> Bool {
        let scan : NSScanner = NSScanner(string: self)
        var val : Int = 0
        return scan.scanInteger(&val) && scan.atEnd
    }
    
    /**
    Check this string is pure float or not
    */
    func isPureDouble() -> Bool {
        let scan : NSScanner = NSScanner(string: self)
        var val : Float = 0.0
        return scan.scanFloat(&val) && scan.atEnd
    }
    
    func isBlank() -> Bool {
        return self.isEqualToString("") ? true : false
    }
    /**
    if this string is valid string or not
    */
    func isValid() -> Bool {
        return (self.isEqualToString("") || self == nil || self.isEqualToString("(null)")) ? false : true

    }
    
    /**
    
    */
    func numberOfWords() -> NSInteger {
        var scanner : NSScanner = NSScanner(string: self)
        var space = NSCharacterSet .whitespaceAndNewlineCharacterSet()
        
        var count : NSInteger = 0
        
        while scanner.scanUpToCharactersFromSet(space, intoString: nil) { count += 1}
        
        return count
    }
    
    /**
    
    */
    func containString(string : NSString) -> Bool {
        return self.rangeOfString(string).location == NSNotFound ? false : true
    }
    
    /**
    
    */
    func isBegin(with string:NSString) -> Bool {
        return self.hasPrefix(string) ? true : false
    }
    
    /**
    
    */
    func isEnd(With string : NSString) -> Bool {
        return self.hasSuffix(string) ? true : false
    }
    
    /**
    
    */
    func addString(string : NSString) -> NSString {
        if string == nil || string.length == 0 {
            return self
        }
        return string.stringByAppendingString(string)
    }
    
    /**
    
    */
    func removeSubString(string : NSString) -> NSString {
        if self.containsString(string) {
            var range : NSRange = self.rangeOfString(string)
            return self.stringByReplacingCharactersInRange(range, withString: string)
        }
        return self
    }
    
    /**
    Check email
    */
    func isValidEmail() -> Bool {
        var regex : NSString = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        
        return predicate.evaluateWithObject(self)
    }
    
    /**
    phone number
    */
    func isValidPhoneNumber() -> Bool {
        var regex : NSString = "[235689][0-9]{6}([0-9]{3})?"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        
        return predicate.evaluateWithObject(self)
    }
    
    /**
    url
    */
    func isValidUrl() -> Bool {
        var regex : NSString = "(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        
        return predicate.evaluateWithObject(self)
    }
}