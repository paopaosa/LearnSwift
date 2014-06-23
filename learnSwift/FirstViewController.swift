//
//  FirstViewController.swift
//  learnSwift
//
//  Created by macpps on 14-6-4.
//  Copyright (c) 2014 paopaosa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var grayView : UIView! = UIView(frame: CGRectMake(0,0,320,400));
        grayView.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(grayView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

