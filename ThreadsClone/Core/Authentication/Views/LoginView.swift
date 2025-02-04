//
//  LoginView.swift
//  ThreadsClone
//
//  Created by KEJES beis on 24.12.24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            
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
                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadTextFieldModifier())
                }
                
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up").fontWeight(.bold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)

                
            }
        }
    }
}

#Preview {
    LoginView()
}
