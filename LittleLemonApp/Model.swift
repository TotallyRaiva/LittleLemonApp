//
//  Model.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import Foundation

struct Restaurant: Identifiable {
    let id = UUID()
    let city: String
    let neighborhood: String
    let phoneNumber: String
}

class Model: ObservableObject {
    @Published var tabViewSelectedIndex: Int = 0
    @Published var displayingReservationForm: Bool = false

    let restaurants = [
        Restaurant(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898"),
        Restaurant(city: "Los Angeles", neighborhood: "North Hollywood", phoneNumber: "(213) 555-1453"),
        Restaurant(city: "Los Angeles", neighborhood: "Venice", phoneNumber: "(310) 555-1222"),
        Restaurant(city: "Nevada", neighborhood: "Venice", phoneNumber: "(725) 555-5454"),
        Restaurant(city: "San Francisco", neighborhood: "North Beach", phoneNumber: "(415) 555-1345"),
        Restaurant(city: "San Francisco", neighborhood: "Union Square", phoneNumber: "(415) 555-9813")
    ]
}
