//
//  UIView+Ex.swift
//  Streaming
//
//  Created by Jemesl on 2019/9/22.
//  Copyright © 2019 Jemesl. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    var width: CGFloat {
        get {
            return self.bounds.size.width
        }
        set(width) {
            self.frame.size = CGSize(width: width, height: self.frame.height)
        }
    }
    
    var height: CGFloat {
        get {
            return self.bounds.size.height
        }
        set(height) {
            self.frame.size = CGSize(width: self.frame.width, height: height)
        }
    }
    
    var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set(origin) {
            self.frame.origin = origin
        }
    }
    
    var size: CGSize {
        get {
            return self.frame.size
        }
        set(size) {
            self.frame.size = size
        }
    }
    
    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set(centerX) {
            self.center = CGPoint(x: centerX, y: self.center.y)
        }
    }
    
    var centerY: CGFloat {
        get {
            return self.center.y
        }
        set(centerY) {
            self.center = CGPoint(x: self.center.x, y: centerY)
        }
    }
    
    var left: CGFloat {
        get {
            return self.frame.origin.x
        }
        set(x) {
            self.frame = CGRect(x: x, y: self.frame.origin.y, width: self.width, height: self.height)
        }
    }
    
    var right: CGFloat {
        get {
            return self.frame.origin.x + self.width
        }
        set(right) {
            self.frame = CGRect(x: right - self.width, y: self.frame.origin.y, width: self.width, height: self.height)
        }
    }
    
    var top: CGFloat {
        get {
            return self.frame.origin.y
        }
        set(y) {
            self.frame = CGRect(x: self.frame.origin.x, y: y, width: self.width, height: self.height)
        }
    }
    
    var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.height
        }
        set(bottom) {
            self.frame = CGRect(x: self.frame.origin.x, y: bottom - self.height, width: self.width, height: self.height)
        }
    }
}
