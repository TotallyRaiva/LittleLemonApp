//
//  ReservationForm.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI


struct ReservationFormView: View {
    @State private var party: Int = 1
    let location: String

    var body: some View {
        VStack(spacing: 20) {
            Text("Reservation at:")
                .font(.headline)

            Text(location)
                .font(.largeTitle)
                .bold()
            // Party Size Field
            HStack {
                    Text("Party")
                        .font(.subheadline)
                    Spacer()
                    TextField("", value: $party, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                        .frame(width: 50)
                        .multilineTextAlignment(.center)
                        .onChange(of: party) {
                            if party <= 0 {
                                party = 1
                            }
                        }
                }

            Spacer()
        }
        .padding()
        .navigationTitle("Reserve Table")
    }
}

#Preview {
    ReservationFormView(location: "Chicago")
}
