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

public typealias AnchorTuple<A: LayoutAnchor> = (anchor: A, constant: CGFloat)
public typealias MultiplierTuple<A: LayoutDimension> = (dimension: A, multiplier: CGFloat)
public typealias DimensionTuple<A: LayoutDimension> = (dimension: A, multiplier: CGFloat, constant: CGFloat)

// MARK: -  LayoutAnchor

public func + <A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> AnchorTuple<A> {
    return (lhs, rhs)
}

public func - <A: LayoutAnchor>(lhs: A, rhs: CGFloat) -> AnchorTuple<A> {
    return (lhs, -rhs)
}

public func == <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.equal(to: rhs)
}

public func == <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: AnchorTuple<A>) {
    lhs.equal(to: rhs.anchor, constant: rhs.constant)
}

public func >= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.greaterThanOrEqual(to: rhs)
}

public func >= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: AnchorTuple<A>) {
    lhs.greaterThanOrEqual(to: rhs.anchor, constant: rhs.constant)
}

public func <= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: A) {
    lhs.lessThanOrEqual(to: rhs)
}

public func <= <A: LayoutAnchor>(lhs: LayoutProperty<A>, rhs: AnchorTuple<A>) {
    lhs.lessThanOrEqual(to: rhs.anchor, constant: rhs.constant)
}

// MARK: -  LayoutDimension

public func * <A: LayoutDimension>(lhs: A, rhs: CGFloat) -> MultiplierTuple<A> {
    return (lhs, rhs)
}

public func + <A: LayoutDimension>(lhs: MultiplierTuple<A>, rhs: CGFloat) -> (A, CGFloat, CGFloat) {
    return (lhs.dimension, lhs.multiplier, rhs)
}

public func - <A: LayoutDimension>(lhs: MultiplierTuple<A>, rhs: CGFloat) -> (A, CGFloat, CGFloat) {
    return (lhs.dimension, lhs.multiplier, -rhs)
}

public func == <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: CGFloat) {
    lhs.equal(to: rhs)
}

public func == <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: MultiplierTuple<A>) {
    lhs.equal(to: rhs.dimension, multiplier: rhs.multiplier)
}

public func == <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: DimensionTuple<A>) {
    lhs.equal(to: rhs.dimension, multiplier: rhs.multiplier, constant: rhs.constant)
}

public func >= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: CGFloat) {
    lhs.greaterThanOrEqual(to: rhs)
}

public func >= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: MultiplierTuple<A>) {
    lhs.greaterThanOrEqual(to: rhs.dimension, multiplier: rhs.multiplier)
}

public func >= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: DimensionTuple<A>) {
    lhs.greaterThanOrEqual(to: rhs.dimension, multiplier: rhs.multiplier, constant: rhs.constant)
}

public func <= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: CGFloat) {
    lhs.lessThanOrEqual(to: rhs)
}

public func <= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: MultiplierTuple<A>) {
    lhs.lessThanOrEqual(to: rhs.dimension, multiplier: rhs.multiplier)
}

public func <= <A: LayoutDimension>(lhs: LayoutProperty<A>, rhs: DimensionTuple<A>) {
    lhs.lessThanOrEqual(to: rhs.dimension, multiplier: rhs.multiplier, constant: rhs.constant)
}

