//
//  XQTestView.swift
//  XQDelegatedDemo
//
//  Created by WXQ on 2019/2/15.
//  Copyright © 2019 WXQ. All rights reserved.
//

import UIKit
import Delegated

class XQTestView: UIView {
    
    
    // 普通回调
    typealias XQCallback = (_ acc: String, _ pwd: String) -> ()
    private var onNormalCallback: XQCallback?
    func normalCallback(_ callback: XQCallback?) {
        self.onNormalCallback = callback
    }
    
    
    // Delegated 声明回调
    typealias Login = (acc: String, pwd: String)
    var callback = Delegated<Login, Void>.init()
    
    @IBAction func respondsToBtn(_ sender: Any) {
        // 普通回调
        self.onNormalCallback?("账号", "密码")
        
        // Delegated 回调
        self.callback.call(("账号", "密码"))
    }
}
