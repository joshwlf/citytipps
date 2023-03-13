//
//  LoginView.swift
//  citytipps
//
//  Created by Joshi Wolfram on 13.03.23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text("Willkommen")
                        .foregroundColor(.orange)
                        .font(.system(size: 30, design: .rounded))
                        .bold()
                    
                    Spacer()
                    
                    TextField("Email", text: $email)
                        .foregroundColor(.black)
                        .textFieldStyle(.plain)
                        .placeholder(when: email.isEmpty) {
                            Text("Email")
                                .foregroundColor(.gray)
                                .bold()
                            
                        }
                    
                    SecureField("Passwort", text: $password)
                        .foregroundColor(.black)
                        .textFieldStyle(.plain)
                        .placeholder(when: password.isEmpty) {
                            Text("Passwort")
                                .foregroundColor(.gray)
                                .bold()
                            
                        }
                    HStack {
                        Spacer()
                        NavigationLink {
                            Text("Forgot password view..")
                        }
                    label: {
                        Text("Forgot password?")
                            .foregroundColor(.blue)
                            .bold()
                    }
                    }
                    
                    Button {
                        // login()
                    } label: {
                        Text("Log-In")
                            .foregroundColor(.white)
                            .bold()
                            .frame(width: 200, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                            )
                            .foregroundColor(.green)
                        
                    }
                    Spacer()
                    
                    NavigationLink {
                        RegistrationView()
                        //   .navigationBarHidden(true)
                    } label: {
                        HStack {
                            Text("Noch kein Account: -> ")
                                .foregroundColor(.blue)
                            
                            Text("Registrieren")
                                .foregroundColor(.blue)
                                .bold()
                        }
                    }
                    .padding(40)
                    
                }
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
