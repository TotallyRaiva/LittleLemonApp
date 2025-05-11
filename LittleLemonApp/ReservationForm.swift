//
//  ReservationForm.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI

struct ReservationFormView: View {
    let location: String

    var body: some View {
        VStack(spacing: 20) {
            Text("Reservation at:")
                .font(.headline)

            Text(location)
                .font(.largeTitle)
                .bold()

            Spacer()
        }
        .padding()
        .navigationTitle("Reserve Table")
    }
}

#Preview {
    ReservationFormView(location: "Chicago")
}
