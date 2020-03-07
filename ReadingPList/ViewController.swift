//
//  ViewController.swift
//  ReadingPList
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        readPlistData()
    }
    func readPlistData()
    {
    
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist")
        {
          //  print(bundlePath)
            
           if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
           {
                //print(dictionary)
            
                if let countries = dictionary["Countries"] as? [String]
                {
                    for v in countries
                    {
                        print(v)
                
                    }
                }
            
            if let usersList = dictionary["Users"] as? [[String:String]]
                {
                    var flag = false
                        for user in usersList
                        {
                           if user["username"] == "abc" && user["password"] == "abc@123"
                           {
                                flag = true
                            }
                    }
                    
                    if flag == true
                    {
                        print("Valid User")
                    }
                    else
                    {
                        print("Invalid User")
                    }
                    
                }
            
            }
        }
    }

}

