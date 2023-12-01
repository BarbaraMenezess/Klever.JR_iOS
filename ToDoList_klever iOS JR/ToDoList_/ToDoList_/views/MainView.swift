//
//  MainView.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 30/11/23.
//

import SwiftUI
struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if $viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
        }else{
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View{
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home",systemImage:"house") }
        }
        ProfileView()
            .tabItem {
                Label("Profile",systemImage:"person.cirle")
            }
        }
    }
    struct MainView_Previews: PreviewProvider {
        static var previews: some View{
            MainView()
        }
    }
