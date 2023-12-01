//
//  NewItemView.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form{
                // title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                //duedate
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                //button
                TLButton(title: "Save", background: .teal
                ){
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    }else{
                        viewModel.showAlert = true
                    }
                    
                }
                .padding()
            }
            .alert(
                isPresented: $viewModel.showAlert){
                Alert(title: Text("Error"),
                      message: Text("Please fill in all fields and select due date that is new, or today."))
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View{
        NewItemView(newItemPresented: Binding(get: {
            return true
        }, set: {_ in
            
        }))
    }
}

