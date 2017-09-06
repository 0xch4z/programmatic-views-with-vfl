//
//  UINavigation+PreferredStatusBarStyle.swift
//  programmatic
//
//  Created by Charles Kenney on 9/6/17.
//  Copyright © 2017 Charles Kenney. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
    
}

