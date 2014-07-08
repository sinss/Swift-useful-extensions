//
//  extensions.swift
//  extensionSample
//
//  Created by Leo Chang on 7/8/14.
//  Copyright (c) 2014 Perfectidea. All rights reserved.
//

import Foundation

extension NSNumber {
    /**
    convert a NSNumber as a display string with comma
    */
    func toDisplayNumber(digit : NSInteger) -> NSString {
    
        if self == nil { return "" }
        var formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
        formatter.roundingMode = NSNumberFormatterRoundingMode.RoundHalfUp
        formatter.maximum = digit
        return formatter.stringFromNumber(self)
    }
    
    /**
    
    */
    func toDisplayPercentage(digit : NSInteger) -> NSString {
        if self == nil { return "" }
        var formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.PercentStyle
        formatter.roundingMode = NSNumberFormatterRoundingMode.RoundHalfUp
        formatter.maximumFractionDigits = digit
        return formatter.stringFromNumber(self)
    }
    
    /**
    return a rounding number
    */
    func rounding(digit : NSInteger) -> NSNumber {
        if self == nil { return NSNumber(double: 0.0) }
        var formatter = NSNumberFormatter()
        formatter.roundingMode = NSNumberFormatterRoundingMode.RoundHalfUp
        formatter.maximumFractionDigits = digit
        formatter.minimumFractionDigits = digit
        var string : NSString = formatter.stringFromNumber(self)
        return NSNumber(double : string.doubleValue);
    }
    
    /**
    return a ceiling number
    */
    func ceiling(digit : NSInteger) -> NSNumber {
        if self == nil { return NSNumber(double: 0.0) }
        var formatter = NSNumberFormatter()
        formatter.roundingMode = NSNumberFormatterRoundingMode.RoundCeiling
        formatter.maximumFractionDigits = digit
        formatter.minimumFractionDigits = digit
        var string : NSString = formatter.stringFromNumber(self)
        return NSNumber(double : string.doubleValue);
    }
    
    /**
    return a flooring number
    */
    func flooring(digit : NSInteger) -> NSNumber {
        if self == nil { return NSNumber(double: 0.0) }
        var formatter = NSNumberFormatter()
        formatter.roundingMode = NSNumberFormatterRoundingMode.RoundFloor
        formatter.maximumFractionDigits = digit
        formatter.minimumFractionDigits = digit
        var string : NSString = formatter.stringFromNumber(self)
        return NSNumber(double : string.doubleValue)
    }
}