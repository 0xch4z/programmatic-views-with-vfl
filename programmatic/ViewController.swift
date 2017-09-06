//
//  ViewController.swift
//  programmatic
//
//  Created by Charles Kenney on 9/6/17.
//  Copyright © 2017 Charles Kenney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = label.font.withSize(35)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.white
        button.setTitle("Press me", for: .normal)
        button.setTitleColor(UIColor(red: 233/255, green: 30/255, blue: 99/255, alpha: 1), for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(navigateToSecondViewController(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func setupView() {
        // setup root view
        view.backgroundColor = UIColor(red: 233/255, green: 30/255, blue: 99/255, alpha: 1)
        
        // add views
        view.addSubview(label)
        view.addSubview(button)
        
        // views dictionary
        let views = [
            "label": label,
            "button": button,
        ]
        
        // add constraints
        var constraints: [NSLayoutConstraint] = []
        
        let labelVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-150-[label]",
            options: .alignAllLastBaseline,
            metrics: nil,
            views: views)
        constraints += labelVerticalConstraints
        
        let labelHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-[label]-|",
            options: [],
            metrics: nil,
            views: views)
        constraints += labelHorizontalConstraints
        
        let buttonVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[button(45)]-50-|",
            options: [],
            metrics: nil,
            views: views)
        constraints += buttonVerticalConstraints
        
        let buttonHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-100-[button]-100-|",
            options: [],
            metrics: nil,
            views: views)
        constraints += buttonHorizontalConstraints
        
        view.addConstraints(constraints)
    }
    
    @objc
    func navigateToSecondViewController(_ sender: UIButton) {
        print("navigation to second view!")
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}

