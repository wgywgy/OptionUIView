//
//  ExampleView.swift
//  OptionViewDemo
//
//  Created by wuguanyu on 15/11/14.
//  Copyright © 2015年 ibestv. All rights reserved.
//

import UIKit

struct DisplayOptions : OptionSetType {
    let rawValue: Int
    
    static let None      = DisplayOptions(rawValue: 0)
    static let Display_1 = DisplayOptions(rawValue: 1 << 0)
    static let Display_2 = DisplayOptions(rawValue: 1 << 1)
    static let Display_3 = DisplayOptions(rawValue: 1 << 2)
}

class ExampleView: UIView {

    var displayType:DisplayOptions {
        didSet {
            if displayType.contains(.Display_1) {
                setupView1()
            } else if displayType.contains(.Display_2) {
                setupView2()
            } else if displayType.contains(.Display_3) {
                setupView3()
            }
        }
    }
    
    var btn1 = UIButton()
    var btn2 = UIButton()
    var btn3 = UIButton()
    
    override init(frame: CGRect) {
        displayType = .None
        super.init(frame: frame)
    }
    
    func setupView1() {
        self.addSubview(btn1)
//        btn1.frame ...
    }
    
    func setupView2() {
        self.addSubview(btn2)
    }

    func setupView3() {
        self.addSubview(btn3)
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
