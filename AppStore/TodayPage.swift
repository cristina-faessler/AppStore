//
//  TodayPage.swift
//  AppStore
//
//  Created by Cristina Bolohan on 19.11.20.
//

import Foundation
import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .leading){
                        Text("Thursday, November 19").foregroundColor(.gray).bold().font(Font.footnote)
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }
                .padding([.leading, .trailing, .top])
            }
            HighlightView(category: "Monstera", title: "Popular indoor plants", message: "is a tropical plant from the Araceae family that is happiest as a houseplant in colder climates. ").frame(height: 500, alignment: .leading)
            HighlightView(category: "Monstera", title: "Popular indoor plants", message: "is a tropical plant from the Araceae family that is happiest as a houseplant in colder climates. ").frame(height: 500, alignment: .leading)
        }
    }
    func loadProfile(){
        
    }
}

struct HighlightView: View {
    
    var category: String
    var title: String
    var message: String
    
    var body: some View{
        VStack{
            ZStack{
                Image("monstera").resizable()
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading){
                    Text(category).foregroundColor(.green).bold()
                    Spacer()
                    Text(title).foregroundColor(.white).font(Font.title).bold()
                    
                    Text(message).foregroundColor(.white)
                }.padding()
            }
        }.cornerRadius(30).padding().shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
