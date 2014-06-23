//
//  MyContentView.swift
//  learnSwift
//
//  Created by macpps on 14-6-9.
//  Copyright (c) 2014 paopaosa. All rights reserved.
//

import UIKit

@IBDesignable
class MyContentView: UIView {
    @IBInspectable var textColor: UIColor?

    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }
    
    init(coder aDecoder: NSCoder!)  {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var grayLabel:UILabel = UILabel(frame: CGRectMake(0,0,20,20))
        grayLabel.text = "Hello"
        grayLabel.textColor = UIColor.greenColor()
        self.addSubview(grayLabel)
    }

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        //// Color Declarations
        
        let color3 = UIColor(red:1, green:0.8, blue:0.867, alpha:1.0)
        let color5 = UIColor(red:1, green:0.571, blue:0.857, alpha:1.0)
        
        //// Oval Drawing
        //        UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(-0.5, -0.5, 48, 48)];
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(-0.5, -0.5, 20, 20))
        color5.setFill()
        //        [color5 setFill]
        ovalPath.fill()
        //        [ovalPath fill];
        color3.setStroke()
        //        [color3 setStroke];
        ovalPath.lineWidth = 1
        //        ovalPath.lineWidth = 1;
        ovalPath.stroke()
        //        [ovalPath stroke];
    }
}
