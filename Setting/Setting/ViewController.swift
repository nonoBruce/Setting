//
//  ViewController.swift
//  Setting
//
//  Created by bruce on 15/5/8.
//  Copyright (c) 2015年 ky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var arr :[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        arr.append("prefs:root=LOCATION_SERVICES")
        arr.append("prefs:root=WIFI")
        arr.append("prefs:root=Bluetooth")
        arr.append("prefs:root=General")
        arr.append("prefs:root=General&path=About")
        arr.append("prefs:root=Phone")
        arr.append("prefs:root=DEVELOPER")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func execAction(sender: UIButton) {
        
        if(UIApplication.sharedApplication().canOpenURL(NSURL(string: arr[sender.tag])!)){
            UIApplication.sharedApplication().openURL(NSURL(string: arr[sender.tag])!)
        }
    }
    
}
