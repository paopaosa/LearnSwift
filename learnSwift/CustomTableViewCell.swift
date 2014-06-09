//
//  CustomTableViewCell.swift
//  learnSwift
//
//  Created by macpps on 14-6-9.
//  Copyright (c) 2014年 paopaosa. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
        self.contentView.addSubview(MyContentView(frame: self.frame))
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
