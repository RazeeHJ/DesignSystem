//
//  DS.CornerRadius.swift
//  
//
//  Created by Razee Hussein-Jamal on 2023-03-23.
//

import SwiftUI

extension DS {
    public struct CornerRadius {
        let value: CGFloat
    }
}

extension DS.CornerRadius {
    /// 0 px
    public static let none: Self = .init(value: 0)
    /// 2 px
    public static let micro: Self = .init(value: 2)
    /// 4 px
    public static let tiny: Self = .init(value: 4)
    /// 8 px
    public static let xxSmall: Self = .init(value: 8)
    /// 12 px
    public static let xSmall: Self = .init(value: 12)
    /// 16 px
    public static let small: Self = .init(value: 16)
    /// 24 px
    public static let medium: Self = .init(value: 24)
    /// 32 px
    public static let large: Self = .init(value: 32)
    /// 48 px
    public static let xLarge: Self = .init(value: 48)
    /// 64 px
    public static let xxLarge: Self = .init(value: 64)
}

extension View {
    public func dsCornerRadius(_ cornerRadius: DS.CornerRadius) -> some View {
        self.cornerRadius(cornerRadius.value)
    }
}

extension CGFloat {
    public static func dsCornerRadius(_ cornerRadius: DS.CornerRadius) -> Self { cornerRadius.value }
}
