//
//  MainViewModels.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//
import FirebaseAuth
import Foundation
class MainViewViewModel: ObservableObject{
    @Published var currentUserId: String
    private var handler: AuthStateDidChangeListenerHandle?
    
    init(){
        let hardler = Auth.auth().addStateDidChangeListener{[weak self]_, user in
            DispatchQueue.main.async{
                
            }
            
        }
        
        public var isSigned: Bool {
            return Auth.auth().currentUser != nil
        }
    }
}
