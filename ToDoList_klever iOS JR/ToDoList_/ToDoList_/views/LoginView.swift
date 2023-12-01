//
//  LoginView.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View{
        NavigationView{
            VStack{
                // Header
                HeaderView(tittle:"To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)
                
                
                }
                Form{
                    if viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TLButton(
                        title: "Log In",
                        background: .blue){
                            viewModel.login()
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                // Criar Conta
                VStack{
                    Text("New around here?")
                    Button("Create An Account"){
                        // Show registration
                    }
                }
                
                .padding(.bottom, 50)

                Spacer()
            }
        }
    }

    
struct LoginView_Previews: PreviewProvider {
    static var previews: some View{
        LoginView()
    }
}
