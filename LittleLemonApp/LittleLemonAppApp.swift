//
//  LittleLemonAppApp.swift
//  LittleLemonApp
//
//  Created by Reiwa on 10.05.2025.
//

import SwiftUI

@main
struct LittleLemonAppApp: App {
    @StateObject private var model = Model()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(model)
        }
    }
}
