//
//  NewItemViewViewModel.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
class NewItemViewViewModel: ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    init(){}
    
    func save(){
        guard canSave else{
            return
        }
        // get current userId
        guard let uID = Auth.auth().currentUser?.uid else{
            return
        }
        // Create model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(id: newId,
        title: title,
        dueDate: dueDate.timeIntervalSince1970 ,
        createdDate: Date().timeIntervalSince1970,
        isDone: false
        )
        //save the model
        let db = Firestore.firestore()
        db.collection("userId")
            .document(uID)
            .collection("Todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool{
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-84400) else{
            return false
        }
        return true
    }
}
