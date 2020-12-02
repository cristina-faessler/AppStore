//
//  GamesPage.swift
//  AppStore
//
//  Created by Cristina Bolohan on 19.11.20.
//

import Foundation
import SwiftUI

struct GamesView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: {
                        Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }.padding([.leading, .trailing, .top])
                ScrollView(.horizontal, showsIndicators: false, content: {
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                })
                
            }
        }
    }
    func loadProfile(){
        
    }
}



struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
