//
//  ContentView.swift
//  SampleGlowing
//
//  Created by Madusanka I M on 2025-05-04.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation:CGFloat = 0.0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height: 340)
                .foregroundColor(.black)
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 130, height: 500)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 7)
                        .frame(width: 256, height: 336)
                }
            
                
        }
        .onAppear {
            withAnimation(
                .linear(duration: 4).repeatForever(autoreverses: false)) {
                    rotation = 360
                }
        }
        
    }
}

#Preview {
    ContentView()
}
