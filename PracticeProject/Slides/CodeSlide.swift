//
//  CodeSlide.swift
//  PracticeProject
//  
//  Created by keeki-fami on 2026/09/16
//  
//

import SlideKit
import SwiftUI

@Slide
struct CodeSlide: View {
    var body: some View {
        HeaderSlide("Code Slide") {
            Text("Syntax Highlight is supported")
            Code(code, syntaxHighlighter: .presentation(fontSize: 32))
        }
    }
}

private let code = """
    struct CodeSlide: Slide {
        var body: some View {
            HeaderSlide("Code Slide") {
                Text("Syntax Highlight is supported")
                Code(code, syntaxHighlighter: .presentation(fontSize: 32))
            }
        }
    }
    """

#Preview {
    SlidePreview {
        CodeSlide()
    }
}
