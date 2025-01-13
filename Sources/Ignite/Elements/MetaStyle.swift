//
// MetaStyle.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

import Foundation

public struct MetaStyle: HeadElement {
    
    /// The content and behavior of this HTML.
    public var body: some HTML { self }
    
    /// A plain-text string for the page title.
    var style: String
    
    /// Creates a new `Style` object using the body provided.
    /// - Parameter body: Style body content.
    public init(style: String) {
        self.style = style
    }
    
    /// Creates a new `Style` object using the body provided.
    /// - Parameter body: Style body content.
    public init(_ style: () -> String) {
        self.style = style()
    }

    
    /// Renders this element using publishing context passed in.
    /// - Parameter context: The current publishing context.
    /// - Returns: The HTML for this element.
    public func render(context: PublishingContext) -> String {
        "<style>\(style)</style>"
    }
    
}
