//
//   LoginView.swift
//  newProject
//
//  Created by Harun Bicakci on 7/13/24.
//

import SwiftUI

struct _LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack{
                // image
                Image("cafelogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.vertical, 32)
                
                // form fields
            VStack(spacing: 24){
                InputView(text: $email,
                        title: "Email Address",
                        placeholder: "name@example.com")
                    // .autocapitalization(.none)
                    
                InputView(text: $password,
                        title: "Password",
                        placeholder: "Enter your password",
                          isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // sign in button
                
                Button{
                    Task{
                        try await                     viewModel.signIn(withEmail: email, password: password)

                    }
                } label: { 
                    HStack{
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: 220, height: 48, alignment: .center)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 30)
                
                Spacer()
                
                // sign up button
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account")
                        Text("Sign up")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 14))
                }
                
                
            }
        }
    }
}

#Preview {
    _LoginView()
}
