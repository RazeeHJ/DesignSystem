public struct DesignSystem {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

public class TEST {
    public private(set) var text = "TEST, World!"

    public init() {
    }
}

extension DS {
    public struct SetText {
        let text: String
    }
}

extension DS.SetText {
    static let ttttt: Self = .init(text: "TESTTHHSSSS")
}
