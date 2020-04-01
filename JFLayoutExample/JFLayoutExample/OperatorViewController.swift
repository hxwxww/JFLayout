//
//  OperatorViewController.swift
//  JFLayoutExample
//
//  Created by HongXiangWen on 2020/3/31.
//  Copyright © 2020 WHX. All rights reserved.
//

import UIKit
import JFLayout

class OperatorViewController: UIViewController {
    
    private lazy var redView = UIView.viewWithColor(.red)
    private lazy var blueView = UIView.viewWithColor(.blue)
    private lazy var greenView = UIView.viewWithColor(.green)
    private lazy var purpleView = UIView.viewWithColor(.purple)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Operators"
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        
        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(greenView)
        view.addSubview(purpleView)
        
        redView.layout {
            $0.topAnchor == view.safeAreaLayoutGuide.topAnchor + 30
            $0.leadingAnchor == view.leadingAnchor + 30
            $0.heightAnchor == view.heightAnchor * 0.5 + 30
        }
        
        blueView.layout {
            $0.topAnchor == redView.topAnchor + 30
            $0.leadingAnchor == redView.trailingAnchor + 30
            $0.widthAnchor == redView.widthAnchor * 0.5
            $0.heightAnchor == redView.heightAnchor * 0.5 + 30
        }
        
        greenView.layout {
            $0.topAnchor == blueView.topAnchor + 30
            $0.leadingAnchor == blueView.trailingAnchor + 30
            $0.widthAnchor == blueView.widthAnchor * 0.5
            $0.heightAnchor == blueView.heightAnchor * 0.5 + 30
        }
        
        purpleView.layout {
            $0.topAnchor == greenView.topAnchor + 30
            $0.leadingAnchor == greenView.trailingAnchor + 30
            $0.widthAnchor == greenView.widthAnchor * 0.5
            $0.heightAnchor == greenView.heightAnchor * 0.5 + 30
            $0.trailingAnchor == view.trailingAnchor - 30
        }
    }
    
}
