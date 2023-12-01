//
//  ToDoListViewViewModel.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import FirebaseFirestore
import Foundation
// viewmodel for list of items view
// primary tab
class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    // Delete to do list item
    // Parameter id: item to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document("user_id")
            .collection("todos")
            .document(id)
            .delete()
    }
}
