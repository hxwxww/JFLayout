//
//  ViewController.swift
//  JFLayoutExample
//
//  Created by HongXiangWen on 2020/3/31.
//  Copyright © 2020 WHX. All rights reserved.
//

import UIKit
import JFLayout

class ViewController: UIViewController {
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 20
        return stack
    }()
    
    
    private lazy var functionBtn = UIButton.buttonWithTitle("Use Functions")
    private lazy var operatorBtn = UIButton.buttonWithTitle("Use Operators")
    private lazy var animationBtn = UIButton.buttonWithTitle("Animation")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(stackView)
        
        functionBtn.addTarget(self, action: #selector(functionBtnClicked), for: .touchUpInside)
        operatorBtn.addTarget(self, action: #selector(operatorBtnClicked), for: .touchUpInside)
        animationBtn.addTarget(self, action: #selector(animationBtnClicked), for: .touchUpInside)
        
        stackView.addArrangedSubview(functionBtn)
        stackView.addArrangedSubview(operatorBtn)
        stackView.addArrangedSubview(animationBtn)
        
        stackView.layout {
            $0.centerXAnchor == view.centerXAnchor
            $0.centerYAnchor == view.centerYAnchor
        }
    }
    
    @objc private func functionBtnClicked() {
        let vc = FunctionViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func operatorBtnClicked() {
        let vc = OperatorViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func animationBtnClicked() {
        let vc = AnimationViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

