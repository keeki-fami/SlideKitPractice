//
//  TitleSlide.swift
//  PracticeProject
//  
//  Created by keeki-fami on 2026/09/15
//  
//

import SlideKit
import SwiftUI

@Slide
struct TitleSlide: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            Text("SlideKit Presentations")
                .fontWeight(.heavy)
                .font(.system(size: 120))
            Text("keeki-fami")
                .fontWeight(.semibold)
                .font(.system(size: 48))
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundStyle(.white)
        .background(.blue)
    }
    
    // bottom right indexを隠す
    var shouldHideIndex: Bool { true }
}

#Preview {
    SlidePreview {
        TitleSlide()
    }
}
