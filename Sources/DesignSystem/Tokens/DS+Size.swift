//
//  DS+Size.swift
//  
//
//  Created by Razee Hussein-Jamal on 2023-04-02.
//

import SwiftUI

extension DS {
    public struct Size {
        let width: DS.Width
        let height: DS.Height
    }
}

extension DS.Size {
    /// 0 px
    public static let none: Self = .init(width: .none, height: .none)
    /// 2 px
    public static let micro: Self = .init(width: .micro, height: .micro)
    /// 4 px
    public static let tiny: Self = .init(width: .tiny, height: .tiny)
    /// 8 px
    public static let mini: Self = .init(width: .mini, height: .mini)
    /// 12 px
    public static let xxSmall: Self = .init(width: .xxSmall, height: .xxSmall)
    /// 16px
    public static let xSmall: Self = .init(width: .xSmall, height: .xSmall)
    /// 24 px
    public static let small: Self = .init(width: .small, height: .small)
    /// 32 px
    public static let medium: Self = .init(width: .medium, height: .medium)
    /// 48 px
    public static let large: Self = .init(width: .large, height: .large)
    /// 64 px
    public static let xLarge: Self = .init(width: .xLarge, height: .xLarge)
    /// 124 px
    public static let xxLarge: Self = .init(width: .xxLarge, height: .xxLarge)
}

extension View {
    public func dsFrameOfSize(_ size: DS.Size) -> some View {
        self.frame(width: size.width.value, height: size.height.value)
    }
    
    public func dsFrameOfHeight(_ height: DS.Height) -> some View {
        self.frame(height: height.value)
    }
}
