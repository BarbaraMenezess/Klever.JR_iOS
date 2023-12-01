//
//  ToDoListView.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String){
        self._viewModel = StateObject(wrappedValue: 
                        ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View{
        NavigationView{
            VStack{
                List(items) {item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                            
                        }
                        .listStyle(PlainListStyle())
                }
                navigationTitle("To Do List")
                    .toolbar{
                        Button{
                            viewModel.showingNewItemView = true
                        }label: {
                            Image(systemName: "plus")
                        }
                    }
                    .sheet(isPresented: $viewModel.showingNewItemView){
                        NewItemView(newItemPresented: $viewModel.showingNewItemView)
                    }
            }
        }
        
        struct ToDoListView_Previews: PreviewProvider{
            static var previews: some View{
                ToDoListView( userId: "9IErgB9lWhhj8HqmA2UCvZmmBEf1")
            }
        }
    }}
