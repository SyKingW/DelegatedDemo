//
//  XQTestVC.swift
//  XQDelegatedDemo
//
//  Created by WXQ on 2019/2/15.
//  Copyright © 2019 WXQ. All rights reserved.
//

import UIKit

class XQTestVC: UIViewController {
    
    var tView: XQTestView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orange
        
        self.tView = Bundle.main.loadNibNamed("XQTestView", owner: nil, options: nil)?.first as? XQTestView
        self.tView.frame = CGRect.init(x: 100, y: 100, width: 300, height: 300)
        self.view.addSubview(self.tView)
        
        
        // 普通callback代码块
//        self.tView.normalCallback { (acc, pwd) in
//            print("acc:", acc, "\npwd:", pwd)
//            self.dismiss(animated: true, completion: nil)
//        }
        
        
        // Delegated 代码块
        // to: 传入需要weak对象
        // { (x, y) in } 中的x和y分别如下
        // x: to传入的weak对象.
        // y: 创建Delegated传入的类型对象
        // return: 创建Delegated时传入的类型对象
        self.tView.callback.delegate(to: self) { (self, info) in
            print("acc:", info.acc, "\npwd:", info.pwd)
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    
    deinit {
        print("释放:", NSStringFromClass(self.classForCoder))
    }
    
}
