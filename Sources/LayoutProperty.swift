//
//  LayoutProperty.swift
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

public struct LayoutProperty<Anchor> {
    
    let anchor: Anchor
    unowned let proxy: LayoutProxy
    
    private func addContraint(_ constraint: NSLayoutConstraint) {
        constraint.isActive = true
        proxy.constraints.append(constraint)
    }

}

extension LayoutProperty where Anchor: LayoutAnchor {
    
    public func equal(to otherAnchor: Anchor, constant: CGFloat = 0) {
        addContraint(anchor.constraint(equalTo: otherAnchor, constant: constant))
    }
    
    public func greaterThanOrEqual(to otherAnchor: Anchor, constant: CGFloat = 0) {
        addContraint(anchor.constraint(greaterThanOrEqualTo: otherAnchor, constant: constant))
    }
    
    public func lessThanOrEqual(to otherAnchor: Anchor, constant: CGFloat = 0) {
        addContraint(anchor.constraint(lessThanOrEqualTo: otherAnchor, constant: constant))
    }
    
}

extension LayoutProperty where Anchor: LayoutDimension {
    
    public func equal(to constant: CGFloat) {
        addContraint(anchor.constraint(equalToConstant: constant))
    }
    
    public func greaterThanOrEqual(to constant: CGFloat) {
        addContraint(anchor.constraint(greaterThanOrEqualToConstant: constant))
    }
    
    public func lessThanOrEqual(to constant: CGFloat) {
        addContraint(anchor.constraint(lessThanOrEqualToConstant: constant))
    }
    
    public func equal(to otherAnchor: Anchor, multiplier: CGFloat, constant: CGFloat = 0) {
        addContraint(anchor.constraint(equalTo: otherAnchor, multiplier: multiplier, constant: constant))
    }
    
    public func greaterThanOrEqual(to otherAnchor: Anchor, multiplier: CGFloat, constant: CGFloat = 0) {
        addContraint(anchor.constraint(greaterThanOrEqualTo: otherAnchor, multiplier: multiplier, constant: constant))
    }
    
    public func lessThanOrEqual(to otherAnchor: Anchor, multiplier: CGFloat, constant: CGFloat = 0) {
        addContraint(anchor.constraint(lessThanOrEqualTo: otherAnchor, multiplier: multiplier, constant: constant))
    }
    
}
