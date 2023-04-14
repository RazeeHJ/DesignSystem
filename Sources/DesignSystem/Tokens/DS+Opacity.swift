//
//  File.swift
//  
//
//  Created by Razee Hussein-Jamal on 2023-04-13.
//

import Foundation
import SwiftUI

extension DS {
    public struct Opacity {
        let value: Double
    }
}

extension DS.Opacity {
    /// 0 px
    public static let none: Self = .init(value: 0.1)
    /// 2 px
    public static let micro: Self = .init(value: 0.2)
    /// 4 px
    public static let tiny: Self = .init(value: 0.3)
    /// 8 px
    public static let xxSmall: Self = .init(value: 0.4)
    /// 12 px
    public static let xSmall: Self = .init(value: 0.5)
    /// 16px
    public static let small: Self = .init(value: 0.6)
    /// 24 px
    public static let medium: Self = .init(value: 0.7)
    /// 32 px
    public static let large: Self = .init(value: 0.8)
    /// 48 px
    public static let xLarge: Self = .init(value: 0.9)
    /// 64 px
    public static let xxLarge: Self = .init(value: 1)
}

extension View {
    public func dsOpacing(_ opacity: DS.Opacity) -> some View {
        self.opacity(opacity.value)
    }
}
