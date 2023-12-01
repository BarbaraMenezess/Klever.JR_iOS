//
//  ToDoList_App.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import SwiftUI
import Firebase

@main
struct ToDoList_App: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
