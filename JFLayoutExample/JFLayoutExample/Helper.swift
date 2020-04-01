//
//  Helper.swift
//  JFLayoutExample
//
//  Created by HongXiangWen on 2020/3/31.
//  Copyright © 2020 WHX. All rights reserved.
//

import UIKit

extension UIButton {
    
    class func buttonWithTitle(_ title: String) -> UIButton {
        let btn = UIButton()
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.link, for: .normal)
        btn.setTitleColor(.lightGray, for: .highlighted)
        return btn
    }
    
}

extension UIView {
    
    class func viewWithColor(_ color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        return view
    }
}
