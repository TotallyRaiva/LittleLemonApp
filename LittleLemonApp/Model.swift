//
//  Model.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import Foundation

class Model: ObservableObject {
    @Published var tabViewSelectedIndex: Int = 0
    @Published var displayingReservationForm: Bool = false
}
