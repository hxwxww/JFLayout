//
//  LayoutAnchor.swift
//  Layout
//
//  Created by HongXiangWen on 2020/3/5.
//  Copyright © 2020 WHX. All rights reserved.
//

#if !os(macOS)
import UIKit
#else
import AppKit
#endif

public protocol LayoutAnchor {
    
    func constraint(equalTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(greaterThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(lessThanOrEqualTo anchor: Self, constant: CGFloat) -> NSLayoutConstraint
}

public protocol LayoutDimension: LayoutAnchor {
    
    func constraint(equalToConstant constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(greaterThanOrEqualToConstant constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(lessThanOrEqualToConstant constant: CGFloat) -> NSLayoutConstraint

    func constraint(equalTo anchor: Self, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(greaterThanOrEqualTo anchor: Self, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint
    
    func constraint(lessThanOrEqualTo anchor: Self, multiplier: CGFloat, constant: CGFloat) -> NSLayoutConstraint
    
}

extension NSLayoutAnchor: LayoutAnchor {}
extension NSLayoutDimension: LayoutDimension {}
