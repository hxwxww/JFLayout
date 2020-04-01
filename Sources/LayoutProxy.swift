//
//  LayoutProxy.swift
//  Layout
//
//  Created by HongXiangWen on 2020/3/5.
//  Copyright © 2020 WHX. All rights reserved.
//

#if !os(macOS)
import UIKit
typealias View = UIView
#else
import AppKit
typealias View = NSView
#endif

public final class LayoutProxy {
    
    public lazy var leadingAnchor = layoutProperty(with: view.leadingAnchor)
    public lazy var trailingAnchor = layoutProperty(with: view.trailingAnchor)
    public lazy var topAnchor = layoutProperty(with: view.topAnchor)
    public lazy var bottomAnchor = layoutProperty(with: view.bottomAnchor)
    public lazy var widthAnchor = layoutProperty(with: view.widthAnchor)
    public lazy var heightAnchor = layoutProperty(with: view.heightAnchor)
    public lazy var centerXAnchor = layoutProperty(with: view.centerXAnchor)
    public lazy var centerYAnchor = layoutProperty(with: view.centerYAnchor)
    
    private unowned let view: View
    
    var constraints = [NSLayoutConstraint]()
    
    init(view: View) {
        self.view = view
    }

    private func layoutProperty<A: LayoutAnchor>(with anchor: A) -> LayoutProperty<A> {
        return LayoutProperty(anchor: anchor, proxy: self)
    }
}

extension View {
    
    /// AssociatedKeys
    private struct AssociatedKeys {
        static var layoutProxy = "layoutProxy"
    }
    
    var layoutProxy: LayoutProxy {
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.layoutProxy, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
        get {
            if let layoutProxy = objc_getAssociatedObject(self, &AssociatedKeys.layoutProxy) as? LayoutProxy {
                return layoutProxy
            }
            let layoutProxy = LayoutProxy(view: self)
            objc_setAssociatedObject(self, &AssociatedKeys.layoutProxy, layoutProxy, .OBJC_ASSOCIATION_RETAIN)
            return layoutProxy
        }
    }
    
    /// `layout(using:)`中已设置的约束列表
    ///
    /// example:
    ///
    ///     label.layout {
    ///         $0.centerXAnchor.equal(to: view.centerXAnchor)
    ///         $0.centerYAnchor.equal(to: view.centerYAnchor)
    ///     }
    ///
    /// 获取已设置的约束并更新
    ///
    ///     label.layoutConstraints[0].constant = 100
    ///
    public var layoutConstraints: [NSLayoutConstraint] {
        return layoutProxy.constraints
    }
    
    /// 构建约束，该方法会删除旧的约束
    ///
    /// example:
    ///
    ///     label.layout {
    ///         $0.centerXAnchor.equal(to: view.centerXAnchor)
    ///         $0.centerYAnchor.equal(to: view.centerYAnchor)
    ///     }
    ///
    /// - Parameter closure: 在此回调中配置约束
    public func layout(using closure: (LayoutProxy) -> Void) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.deactivate(layoutProxy.constraints)
        layoutProxy.constraints.removeAll()
        closure(layoutProxy)
    }
}
