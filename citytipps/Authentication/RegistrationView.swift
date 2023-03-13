//
//  RegistrationView.swift
//  citytipps
//
//  Created by Joshi Wolfram on 13.03.23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: 20) {
               
                Spacer()
                Text("Registrierung")
                    .foregroundColor(.orange)
                    .font(.system(size: 30, design: .rounded))
                    .bold()
                
Spacer()
                
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.gray)
                            .bold()
                        
                    }
               
                TextField("Username", text: $username)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: username.isEmpty) {
                        Text("Username")
                            .foregroundColor(.gray)
                            .bold()
                        
                    }
                
                TextField("Name", text: $fullname)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: fullname.isEmpty) {
                        Text("Name")
                            .foregroundColor(.gray)
                            .bold()
                        
                    }
                
                SecureField("Passwort", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Passwort")
                            .foregroundColor(.gray)
                            .bold()
                        
                    }
               
                
                Button {
                    // login()
                } label: {
                    Text("Account erstellen")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                        )
                        .foregroundColor(.green)
                    
                
                    
                }
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Bereits ein Account erstellt: -> Log-In")
                        .foregroundColor(.blue)
                        .bold()
                        .frame(width: 300, height: 40)
                }
              
                .padding(40)
                Spacer()
                
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
