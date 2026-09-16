//
//  firstTextBaseline.swift
//  PracticeProject
//  
//  Created by keeki-fami on 2026/09/16
//  
//
import SwiftUI

struct FirstTextBaseline: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 0) {
            Color.red.frame(height: 1)
            Text("Text").font(.title).border(.gray)
            Color.red.frame(height: 1)
        }
        HStack(spacing: 0) {
            Color.red.frame(height: 1)
            Text("Text").font(.title).border(.gray)
            Color.red.frame(height: 1)
        }
    }
}

#Preview {
    FirstTextBaseline()
}
