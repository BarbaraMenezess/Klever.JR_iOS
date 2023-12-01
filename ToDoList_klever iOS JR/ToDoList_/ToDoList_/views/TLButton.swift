//
//  TLButton.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 30/11/23.
//

import SwiftUI
struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text("tile")
                    .foregroundColor(Color.white)             .bold()
            }
        }
        .bold()
    }
}

struct TLButton_Previews: PreviewProvider{
    static var previews: some View{
        TLButton(title: "Value", background: .pink){
            // Action
        }
    }
}
