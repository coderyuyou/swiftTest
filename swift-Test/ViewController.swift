//
//  ViewController.swift
//  swift-Test
//
//  Created by 于优 on 2018/11/9.
//  Copyright © 2018 EasyRent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addTow = addTo(2)
        let result = addTo(6)
        print(addTow, result)
        
        var name = "abc"
        let subName = "123"
        
        name.append(subName)
        print("----\(name)")
        
        for char in name {
            print(char)
        }
        
        for index in name.indices {
            print(name[(index)])
        }
        
        for (index, value) in name.enumerated() {
            print("\(index) --- \(value)")
        }
    }
    
    func addTo(_ adder: Int) -> (Int) -> Int {
        return {
            num in
            return num + adder
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

