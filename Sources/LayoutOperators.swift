//
//  LayoutOperators.swift
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

// MARK: -  LayoutAnchor

public func + <A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

public func - <A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, -rhs)
}

public func == <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.equal(to: rhs)
}

public func == <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) {
    lhs.equal(to: rhs.0, constant: rhs.1)
}

public func >= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.greaterThanOrEqual(to: rhs)
}

public func >= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, constant: rhs.1)
}

public func <= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.lessThanOrEqual(to: rhs)
}

public func <= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: (A, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, constant: rhs.1)
}

// MARK: -  LayoutDimension

public func * <A: LayoutDimension>(lhs: A, rhs: CGFloat) -> (A, CGFloat) {
    return (lhs, rhs)
}

public func + <A: LayoutDimension>(lhs: (A, CGFloat), rhs: CGFloat) -> (A, CGFloat, CGFloat) {
    return (lhs.0, lhs.1, rhs)
}

public func - <A: LayoutDimension>(lhs: (A, CGFloat), rhs: CGFloat) -> (A, CGFloat, CGFloat) {
    return (lhs.0, lhs.1, -rhs)
}

public func == <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: (A, CGFloat, CGFloat)) {
    lhs.equal(to: rhs.0, multiplier: rhs.1, constant: rhs.2)
}

public func == <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: CGFloat) {
    lhs.equal(to: rhs)
}

public func >= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: CGFloat) {
    lhs.greaterThanOrEqual(to: rhs)
}

public func >= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: (A, CGFloat, CGFloat)) {
    lhs.greaterThanOrEqual(to: rhs.0, multiplier: rhs.1, constant: rhs.2)
}

public func <= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: CGFloat) {
    lhs.lessThanOrEqual(to: rhs)
}

public func <= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: (A, CGFloat, CGFloat)) {
    lhs.lessThanOrEqual(to: rhs.0, multiplier: rhs.1, constant: rhs.2)
}

