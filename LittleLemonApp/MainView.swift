//
//  ContentView.swift
//  LittleLemonApp
//
//  Created by Reiwa on 10.05.2025.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        TabView(selection: $model.tabViewSelectedIndex) {
            LocationsView()
                .tag(0)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "fork.knife")
                    }
                }

            ReservationView()
                .tag(1)
                .tabItem {
                    Label("Reservation", systemImage: "calendar")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(Model())
}
