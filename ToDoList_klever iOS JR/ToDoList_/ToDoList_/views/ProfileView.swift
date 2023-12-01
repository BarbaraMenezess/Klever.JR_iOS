//
//  ProfileView.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import SwiftUI
struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    
    
    var body: some View{
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile")
            .toolbar{
                Button{
                    // Action
                }label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View{
        ProfileView()
    }
}
