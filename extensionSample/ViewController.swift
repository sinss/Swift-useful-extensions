//
//  ViewController.swift
//  extensionSample
//
//  Created by Leo Chang on 7/8/14.
//  Copyright (c) 2014 Perfectidea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var number : NSNumber = NSNumber(double: 1000);
        
        println(NSString.getDisplayApplicationName())
        
        let url : NSString = "httss://www.www.www"
        let email : NSString = "sinss0000@gmail.com"
        let phone : NSString = "09xx000000"
        
        if url.isValidUrl() {
            println("\(url) is a valid url")
        }
        else {
            println("\(url) is not a valid url")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

