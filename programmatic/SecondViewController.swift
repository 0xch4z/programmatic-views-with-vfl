//
//  SecondViewController.swift
//  programmatic
//
//  Created by Charles Kenney on 9/6/17.
//  Copyright © 2017 Charles Kenney. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Hello, again!"
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = label.font.withSize(35)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        // setup root view
        view.backgroundColor = UIColor(red: 129/255, green: 212/255, blue: 250/255, alpha: 1)
        navigationController?.navigationBar.isHidden = false
        
        // add subviews
        view.addSubview(label)
        
        let views: [String:UIView] = [
            "view": view,
            "label": label,
        ]
        
        // add constraints
        var constraints: [NSLayoutConstraint] = []
        
        let labelVerticalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-[label]-|",
            options: [],
            metrics: nil,
            views: views)
        constraints += labelVerticalConstraints
        
        let labelHorizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-(<=1)-[label]-|",
            options: NSLayoutFormatOptions.alignAllCenterX,
            metrics: nil,
            views: views)
        constraints += labelHorizontalConstraints
        
        view.addConstraints(constraints)
    }
    
}
