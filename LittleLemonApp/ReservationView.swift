//
//  ReservationView.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI

struct ReservationView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        VStack {
            if let reservation = model.confirmedReservation {
                Text("Reservation Confirmed!")
                    .font(.title)
                    .padding()

                VStack(alignment: .leading, spacing: 8) {
                    Text("Location: \(reservation.location)")
                    Text("Party Size: \(reservation.party)")
                    Text("Date: \(reservation.date.formatted(date: .abbreviated, time: .shortened))")
                    Text("Name: \(reservation.name)")
                    Text("Phone: \(reservation.phone)")
                    Text("Email: \(reservation.email)")

                    if !reservation.specialRequest.isEmpty {
                        Text("Special Request: \(reservation.specialRequest)")
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            } else {
                Text("No reservation yet")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ReservationView()
        .environmentObject(Model())
}
