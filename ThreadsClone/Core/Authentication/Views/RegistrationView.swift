//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by KEJES beis on 24.12.24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads-app-icon")
                .resizable().scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadTextFieldModifier())
                TextField("Enter your username", text: $username)
                    .modifier(ThreadTextFieldModifier())
                TextField("Enter your full name", text: $fullname)
                    .modifier(ThreadTextFieldModifier())
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadTextFieldModifier())
            }
            
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Log in").fontWeight(.bold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
            
            
            

            
        }
    }
}

#Preview {
    RegistrationView()
}
