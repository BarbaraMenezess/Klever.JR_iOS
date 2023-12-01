//
//  HeaderView.swift
//  ToDoList_
//
//  Created by Bárbara Menezes  on 29/11/23.
//

import SwiftUI
struct HeaderView: View {
    let tittle: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack{
                Text("tittle")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .bold()
                Text(" subtile")
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View{
        HeaderView(tittle: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
    }
}

