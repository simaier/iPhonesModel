//
//  UIDevice_Extension.swift
//  UIDevice_Extension
//
//  Created by 范智超 on 2019/1/2.
//  Copyright © 2019 范智超. All rights reserved.
//

import Foundation
import UIKit

public enum iphonesModel {
    case iPhone4       //320*480
    case iPhone5       //320*568
    case iPhone6       //375*667 ->iPhone6,iPhone7,iPhone8
    case iPhone6Plus   //414*736 ->iPhone6Plus,iPhone7Plus,iPhone8Plus
    case iPhoneX       //375*812 ->iPhoneX,iPhoneXS
    case iPhoneXR      //414*896 @2x
    case iPhoneXMax    //414*896 @3x
    case UnKnow
    
}

//    MARK: - 通过屏幕逻辑分辨机型
public protocol iPhoneModelS{
    
    func iPhone() -> iphonesModel
}

public extension iPhoneModelS
{
    func iPhone() -> iphonesModel
    {
        let rect = UIScreen.main.bounds
        let width = rect.size.width
        let height = rect.size.height
        
//        判断当前横竖屏模式
        let orientation = UIApplication.shared.statusBarOrientation
        if orientation == .unknown {
            return iphonesModel.UnKnow
        }
        
//        竖屏或者倒屏
        if orientation == UIInterfaceOrientation.portrait || orientation == UIInterfaceOrientation.portraitUpsideDown
        {
//            iPhone5S以及以前系列
            if width == 320.0
            {
                if height == 480.0
                {
                    return iphonesModel.iPhone4
                }else
                {
                    return iphonesModel.iPhone5
                }
            }else if width == 375.0
            {
//                iPhone6,iPhone7,iPhone8,iPhoneX,iPhoneXS系列
                if height == 812.0
                {
                    return iphonesModel.iPhoneX
                }else
                {
                    return iphonesModel.iPhone6
                }
            }else if width == 414.0
            {
//                iPhone6Plus,iPhone7Plus,iPhone8Plus,iPhoneXR,iPhoneXSMax系列
                if height == 736.0
                {
                    return iphonesModel.iPhone6Plus
                }else
                {
                    let modeSize = UIScreen.main.currentMode?.size
                    if (modeSize?.equalTo(CGSize.init(width: 828.0, height: 1792.0)))!
                    {
                        return iphonesModel.iPhoneXR
                    }
                    return iphonesModel.iPhoneXMax
                    
                }
            }else
            {
                return iphonesModel.UnKnow
            }
        }else if orientation == UIInterfaceOrientation.landscapeLeft || orientation == UIInterfaceOrientation.landscapeRight
        {
//            左屏或者右屏
            return iphonesModel.UnKnow
        }else
        {
            return iphonesModel.UnKnow
        }
        
    }
}
