//
//  CustomizedSlide.swift
//  PracticeProject
//  
//  Created by keeki-fami on 2026/09/16
//  
//

import SlideKit
import SwiftUI

@Slide
struct CustomizedSlide: View {
    var body: some View {
        HeaderSlide("Customize Slide Theme") {
            Item("HeaderSlide suppors HeaderSlideStyle.")
            Item("Item supports ItemStyle") {
                Item("Nested Item can be customized.")
            }
        }
        .headerSlideStyle(CustomHeaderSlideStyle())
        .itemStyle(CustomItemStyle())
    }
}

struct CustomItemStyle: ItemStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack (alignment: .leading, spacing: 45){
            HStack (alignment: .firstTextBaseline, spacing: 0) {
                switch configuration.accessory {
                case .bullet where configuration.itemDepth == 0:
                    Text("・").bold()
                case .bullet:
                    Text(" - ").bold()
                case .number(let number):
                    Text("\(number). ")
                case .string(let string):
                    Text("\(string). ")
                case nil:
                    EmptyView()
                }
                configuration.label
            }
            configuration.child
                .padding(.leading, 90)
        }
    }
}

struct CustomHeaderSlideStyle: HeaderSlideStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack (alignment: .leading) {
            configuration.header
                .font(.system(size: 90))
                .padding(.vertical, 80)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundStyle(.green)
            VStack (alignment: .leading, spacing: 90) {
                configuration.content
                    .font(.system(size: 48))
            }
        }
        .font(.system(size: 48))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct CustomIndexStyle: IndexStyle {
    func makeBody(configuration: Configuration) -> some View {
        Text("\(configuration.slideIndexController.currentIndex)")
            .font(.system(size: 420, weight: .heavy))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .foregroundStyle(.gray.opacity(0.4))
            .offset(y: 70)
    }
}
