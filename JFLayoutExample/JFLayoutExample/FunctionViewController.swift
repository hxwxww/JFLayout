//
//  FunctionViewController.swift
//  JFLayoutExample
//
//  Created by HongXiangWen on 2020/3/31.
//  Copyright © 2020 WHX. All rights reserved.
//

import UIKit
import JFLayout

class FunctionViewController: UIViewController {
    
    private lazy var redView = UIView.viewWithColor(.red)
    private lazy var blueView = UIView.viewWithColor(.blue)
    private lazy var greenView = UIView.viewWithColor(.green)
    private lazy var purpleView = UIView.viewWithColor(.purple)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Functions"
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        
        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(greenView)
        view.addSubview(purpleView)
        
        redView.layout {
            $0.topAnchor.equal(to: view.safeAreaLayoutGuide.topAnchor, constant: 30)
            $0.leadingAnchor.equal(to: view.leadingAnchor, constant: 30)
            $0.heightAnchor.equal(to: view.heightAnchor, multiplier: 0.5, constant: 30)
        }
        
        blueView.layout {
            $0.topAnchor.equal(to: redView.topAnchor, constant: 30)
            $0.leadingAnchor.equal(to: redView.trailingAnchor, constant: 30)
            $0.widthAnchor.equal(to: redView.widthAnchor, multiplier: 0.5)
            $0.heightAnchor.equal(to: redView.heightAnchor, multiplier: 0.5, constant: 30)
        }
        
        greenView.layout {
            $0.topAnchor.equal(to: blueView.topAnchor, constant: 30)
            $0.leadingAnchor.equal(to: blueView.trailingAnchor, constant: 30)
            $0.widthAnchor.equal(to: blueView.widthAnchor, multiplier: 0.5)
            $0.heightAnchor.equal(to: blueView.heightAnchor, multiplier: 0.5, constant: 30)
        }
        
        purpleView.layout {
            $0.topAnchor.equal(to: greenView.topAnchor, constant: 30)
            $0.leadingAnchor.equal(to: greenView.trailingAnchor, constant: 30)
            $0.widthAnchor.equal(to: greenView.widthAnchor, multiplier: 0.5)
            $0.heightAnchor.equal(to: greenView.heightAnchor, multiplier: 0.5, constant: 30)
            $0.trailingAnchor.equal(to: view.trailingAnchor, constant: -30)
        }
    }
    
}
