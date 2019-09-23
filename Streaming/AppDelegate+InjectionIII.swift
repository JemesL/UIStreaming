//
//  AppDelegate+InjectionIII.swift
//  Streaming
//
//  Created by Jemesl on 2019/9/22.
//  Copyright © 2019 Jemesl. All rights reserved.
//

import Foundation
import  UIKit
extension AppDelegate {
    func loadInjectionIII() {
        #if DEBUG
        Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")?.load()
        #endif
    }
}

extension UIViewController {
    @objc func injected() {
        view.subviews.forEach { v in
            v.snp.removeConstraints()
            v.removeFromSuperview()
        }
        viewDidLoad()
        viewWillAppear(true)
        viewDidAppear(true)
    }
}

