//
//  RegistreView.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import SwiftUI
struct RegistreView: View {
    @StateObject var viewModel = RegistreViewViewModel()
    
    var body: some View{
        VStack{
            // Header
            VStack{
                // Header
                HeaderView(tittle:"Registre", subtitle: "start Organizing ToDos", angle: -15, background: .orange)
                Form {
                    TextField("Full Name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        }
                TextField("Email Address", text: $viewModel.email)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .green
                ){
                    viewModel.register()
                }
                .padding()

                }
            .offset(y: -50)
            Spacer()
            }
        }
    }
    
    struct RegistreView_Previews: PreviewProvider {
        static var previews: some View{
            RegistreView()
        }
    }
