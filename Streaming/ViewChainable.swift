//
//  ViewChainable.swift
//  Streaming
//
//  Created by Jemesl on 2019/9/21.
//  Copyright © 2019 Jemesl. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
protocol ViewChainable {}
extension ViewChainable where Self: UIView {
    @discardableResult
    func config(_ config: (Self) -> Void) -> Self {
        config(self)
        return self
    }
}
extension UIView: ViewChainable {
    func adhere(toSuperView: UIView) -> Self {
        toSuperView.addSubview(self)
        return self
    }
    @discardableResult
    func layout(snapKitMaker: (ConstraintMaker) -> Void) -> Self {
        self.snp.makeConstraints { (make) in
            snapKitMaker(make)
        }
        return self
    }
}
