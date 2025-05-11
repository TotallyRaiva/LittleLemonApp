//
//  LittleLemonLogo.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        Image("LittleLemon_Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .accessibilityLabel("Little Lemon Logo")
    }
}
#Preview {
    LittleLemonLogo()
}
