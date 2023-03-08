//
//  Placeholder1.swift
//  citytipps
//
//  Created by Joshi Wolfram on 07.03.23.
//

import SwiftUI

struct Placeholder1: View {
    @State private var email = ""
    @State private var passwort = ""
    var body: some View {
        ZStack {
            Color.gray
            VStack(spacing: 20) {
                Text("Willkommen")
                    .foregroundColor(.orange)
                    .font(.system(size: 30, design: .rounded))
                    .bold()
                
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                        
                    }
                        
                    SecureField("Passwort", text: $passwort)
                            .foregroundColor(.white)
                            .textFieldStyle(.plain)
                            .placeholder(when: passwort.isEmpty) {
                                Text("Passwort")
                                    .foregroundColor(.white)
                                    .bold()
                        
                    }
                Button {
                    // Registrieren
                } label: {
                    Text("Registrieren")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            )
                        .foregroundColor(.red)
                }
                
                Button {
                    // Registrieren
                } label: {
                    Text("Du hast bereits einen Account? -> Login")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 360, height: 40)
                      
                }

            }
        }
        .ignoresSafeArea()
    }
}

struct Placeholder1_Previews: PreviewProvider {
    static var previews: some View {
        Placeholder1()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
