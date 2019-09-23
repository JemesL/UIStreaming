//
//  JLSapce.swift
//  SwiftSTAT
//
//  Created by Jemesl on 2019/9/14.
//  Copyright © 2019 Jemesl. All rights reserved.
//

import Foundation
import UIKit

// ************************** JL 命名空间 **************************
protocol JLSpacable {
    associatedtype CompatibleType
    static var jl: JLSpace<CompatibleType>.Type { get }
    var jl: JLSpace<CompatibleType> { get }
}

extension JLSpacable {
    public static var jl: JLSpace<Self>.Type {
        get {
            return JLSpace<Self>.self
        }
    }
    public var jl: JLSpace<Self> {
        get {
            return JLSpace(self)
        }
    }
}

public struct JLSpace<Base> {
    public let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
}

extension NSObject: JLSpacable {}
