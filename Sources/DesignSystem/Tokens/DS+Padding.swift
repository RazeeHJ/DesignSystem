//
//  DS+Padding.swift
//  
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI

extension DS {
    public struct Padding {
        let top: CGFloat
        let leading: CGFloat
        let bottom: CGFloat
        let trailing: CGFloat
    }
}

extension DS.Padding {
    /// 0 px
    public static let none: Self = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
    /// 2 px
    public static let micro: Self = .init(top: 2, leading: 2, bottom: 2, trailing: 2)
    /// 4 px
    public static let tiny: Self = .init(top: 4, leading: 4, bottom: 4, trailing: 4)
    /// 8 px
    public static let xxSmall: Self = .init(top: 8, leading: 8, bottom: 8, trailing: 8)
    /// 12 px
    public static let xSmall: Self = .init(top: 12, leading: 12, bottom: 12, trailing: 12)
    /// 16 px
    public static let small: Self = .init(top: 16, leading: 16, bottom: 16, trailing: 16)
    /// 24 px
    public static let medium: Self = .init(top: 24, leading: 24, bottom: 24, trailing: 24)
    /// 32 px
    public static let large: Self = .init(top: 32, leading: 32, bottom: 32, trailing: 32)
    /// 48 px
    public static let xLarge: Self = .init(top: 48, leading: 48, bottom: 48, trailing: 48)
    /// 64 px
    public static let xxLarge: Self = .init(top: 64, leading: 64, bottom: 64, trailing: 64)
}

extension View {
    public func dsPadding(_ padding: DS.Padding) -> some View {
        self.padding(
            .init(
                top: padding.top, leading: padding.leading, bottom: padding.bottom, trailing: padding.trailing
            )
        )
    }
    
    public func dsPadding(top: DS.Padding = .none, leading: DS.Padding = .none, bottom: DS.Padding = .none, trailing: DS.Padding = .none) -> some View {
        self.padding(
            .init(
                top: top.top, leading: leading.leading, bottom: bottom.bottom, trailing: trailing.trailing
            )
        )
    }
}
