//
//  BaseMethodButton.swift
//  BaseUIKit
//
//  Created by 朱亚静 on 2018/5/17.
//  Copyright © 2018年 朱亚静. All rights reserved.
//

import UIKit

class BaseMethodButton: UIButton {

    var imageViewRect:CGRect? {
        didSet{
            super.layoutIfNeeded()
        }
    }
    var titleLabelTect:CGRect?{
        didSet{
            super.layoutIfNeeded()
        }
    }

    
    convenience init() {
        self.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        if (imageViewRect?.isEmpty)! {
            return super.imageRect(forContentRect: contentRect)
        }
        return imageViewRect!
    }
    
    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
        if (titleLabelTect?.isNull)! {
            return super.titleRect(forContentRect: contentRect)
        }
        return titleLabelTect!
    }
}
