//
//  DS+Color.swift
//  
//
//  Created by Razee Hussein-Jamal on 2023-03-23.
//

import SwiftUI

extension DS {
    public struct Color {
        let color: SwiftUI.Color
    }
}

extension DS.Color {
    /// A color primaryLight
    public static let primaryLight: Self = .init(color: .primaryLight)
    /// A color primaryMain
    public static let primaryMain: Self = .init(color: .primaryMain)
    /// A color primaryDark
    public static let primaryDark: Self = .init(color: .primaryDark)
    
    /// A color secondaryLight
    public static let secondaryLight: Self = .init(color: .secondaryLight)
    /// A color secondaryMain
    public static let secondaryMain: Self = .init(color: .secondaryMain)
    /// A color secondaryDark
    public static let secondaryDark: Self = .init(color: .secondaryDark)
    
    /// A color tertiaryLight
    public static let tertiaryLight: Self = .init(color: .tertiaryLight)
    /// A color tertiaryMain
    public static let tertiaryMain: Self = .init(color: .tertiaryMain)
    /// A color tertiaryDark
    public static let tertiaryDark: Self = .init(color: .tertiaryDark)
    
    /// A color neautralWhiteLight
    public static let neautralWhiteLight: Self = .init(color: .neautralWhiteLight)
    /// A color neautralWhiteMain
    public static let neautralWhiteMain: Self = .init(color: .neautralWhiteMain)
    /// A color neautralWhiteDark
    public static let neautralWhiteDark: Self = .init(color: .neautralWhiteDark)
}

extension Color {
    static let primaryLight = Color("primaryLight", bundle: .main)
    static let primaryMain = Color("primaryMain", bundle: .main)
    static let primaryDark = Color("primaryDark", bundle: .main)

    static let secondaryLight = Color("secondaryLight", bundle: .main)
    static let secondaryMain = Color("secondaryMain", bundle: .main)
    static let secondaryDark = Color("secondaryDark", bundle: .main)

    static let tertiaryLight = Color("tertiaryLight", bundle: .main)
    static let tertiaryMain = Color("tertiaryMain", bundle: .main)
    static let tertiaryDark = Color("tertiaryDark", bundle: .main)
    
    static let neautralWhiteLight = Color("neautralWhiteLight", bundle: .main)
    static let neautralWhiteMain = Color("neautralWhiteMain", bundle: .main)
    static let neautralWhiteDark = Color("neautralWhiteDark", bundle: .main)
}

extension Color {
    static func ds(_ color: DS.Color) -> Self { color.color }
}

extension View {
    public func dsForegroundColor(_ color: DS.Color) -> some View {
        self.foregroundColor(.ds(color))
    }
}

extension View {
    public func dsBackgroundColor(_ color: DS.Color) -> some View {
        self.background(Color.ds(color))
    }
}
