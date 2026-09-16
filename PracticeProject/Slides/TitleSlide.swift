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
            Text("Swiftでライブラリを作って、AtCoder入緑に再挑戦")
                .fontWeight(.heavy)
                .font(.system(size: 120))
            Text("keeki | 櫻田聖和")
                .fontWeight(.semibold)
                .font(.system(size: 48))
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundStyle(.white)
        .background(.green)
    }
    
    // bottom right indexを隠す
    var shouldHideIndex: Bool { true }
}

#Preview {
    SlidePreview {
        TitleSlide()
    }
}
