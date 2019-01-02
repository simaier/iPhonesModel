//
//  ViewController.swift
//  UIDevice_Extension
//
//  Created by 范智超 on 2019/1/2.
//  Copyright © 2019 范智超. All rights reserved.
//

import UIKit

class ViewController: UIViewController,iPhoneModelS {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       SiMaiEr_Log(message: UIScreen.main.bounds)
        
        if iPhone() == .iPhoneX {
            SiMaiEr_Log(message: "我是iPhoneX")
        }else
        {
            SiMaiEr_Log(message: "我是个普通的iPhone")
        }
        
    }


}

