//
//  RegistrationView.swift
//  newProject
//
//  Created by Harun Bicakci on 7/13/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            // image
            Image("cafelogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.vertical, 32)
        }
        VStack(spacing: 24){
            InputView(text: $email,
                title: "Email Address",
                placeholder: "name@example.com")
            // .autocapitalization(.none)
           
            InputView(text: $fullname,
                title: "Full Name",
                placeholder: "Enter your name")
            
            InputView(text: $password,
                title: "Password",
                placeholder: "Enter your password",
                isSecureField: true)
            
            InputView(text: $confirmPassword,
                title: "Confirm Password",
                placeholder: "Confirm your password",
                isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        Button{
            print("Sign user up..")
        } label: {
            HStack{
                Text("SIGN UP")
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
        
        Button {
            dismiss()
        } label: {
            HStack(spacing: 3){
                Text("Already have an account?")
                Text("Sign in")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .font(.system(size: 14))
        }

        
        }
}

#Preview {
    RegistrationView()
}
 
