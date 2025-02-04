//
//  ContentView.swift
//  CustomButton
//
//  Created by Adrian Suryo Abiyoga on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                CustomButton(buttonTint: .blue) {
                    HStack(spacing: 10) {
                        Text("Login")
                        Image(systemName: "chevron.right")
                    }
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                } action: {
                    try? await Task.sleep(for: .seconds(2))
                    return .failed("Password Incorrect!")
                }
                .tint(.white)
                .buttonStyle(.opacityLess)
            }
            .navigationTitle("Animated Button")
        }
    }
}
#Preview {
    ContentView()
}
