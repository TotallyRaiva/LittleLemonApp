//
//  ReservationForm.swift
//  LittleLemonApp
//
//  Created by Reiwa on 11.05.2025.
//
import SwiftUI


struct ReservationFormView: View {
    @State private var party: Int = 1
    @State private var reservationDate = Date()
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    @State private var specialRequest: String = ""
    
    @State private var showFormInvalidMessage = false
    @State private var errorMessage = ""
    
    let location: String

    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                Text("Reserve Table - \(location)")
                    .font(.title)
                    .bold()
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                // Party Size Field
                HStack {
                    Text("Party")
                        .font(.subheadline)
                    Spacer()
                    Button(action: {
                        if party > 1 {
                            party -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .font(.title2)
                            .padding(.horizontal, 4)
                    }
                    Text("\(party)")
                        .frame(width: 40)
                        .multilineTextAlignment(.center)
                    Button(action: {
                        party += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                            .padding(.horizontal, 4)
                    }
                }

                // DatePicker Field
                DatePicker(
                    "",
                    selection: $reservationDate,
                    displayedComponents: [.date, .hourAndMinute]
                )
                .labelsHidden()
                .datePickerStyle(.compact)
            
                // Name Field
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                // Phone Field
                TextField("Phone", text: $phone)
                    .keyboardType(.phonePad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(8)
                    .padding(.horizontal)
                
                // Email Field
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(8)
                    .padding(.horizontal)
            
                // Special Request Field (Multiline)
                TextEditor(text: $specialRequest)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.5)))
                    .padding(.top, 6)
                    .padding(.horizontal)
                    .overlay(
                        Group {
                            if specialRequest.isEmpty {
                                Text("Add any special request (optional)")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 16)
                                    .padding(.top, 14)
                            }
                        },
                        alignment: .topLeading
                    )
                
                Button(action: {
                    validateForm()
                }) {
                    Text("CONFIRM RESERVATION")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom, 60)

                Spacer()
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .padding()
        .safeAreaInset(edge: .bottom, spacing: 0) {
            Color.clear.frame(height: 20)
        }
        .alert("Form Invalid", isPresented: $showFormInvalidMessage) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(errorMessage)
        }
        .navigationTitle("Reserve Table")
    }
    
    private func validateForm() {
        var errors = [String]()

        if name.trimmingCharacters(in: .whitespaces).count < 3 {
            errors.append("Name must be at least 3 characters long.")
        }

        if phone.trimmingCharacters(in: .whitespaces).isEmpty {
            errors.append("Phone number cannot be empty.")
        }

        if !email.contains("@") {
            errors.append("Please enter a valid email address.")
        }

        if errors.isEmpty {
            print("Form is valid. Proceeding with reservation...")
            // Future: Save reservation data and navigate back.
        } else {
            errorMessage = errors.joined(separator: "\n")
            showFormInvalidMessage = true
        }
    }
}

#Preview {
    ReservationFormView(location: "Chicago")
}
