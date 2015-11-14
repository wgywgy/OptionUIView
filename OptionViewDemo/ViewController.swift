//
//  ViewController.swift
//  OptionViewDemo
//
//  Created by wuguanyu on 15/11/14.
//  Copyright © 2015年 ibestv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let examView = ExampleView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        examView.backgroundColor = UIColor.darkGrayColor()
        examView.displayType = [DisplayOptions.Display_1, DisplayOptions.Display_2];
        
        self.view.addSubview(examView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

