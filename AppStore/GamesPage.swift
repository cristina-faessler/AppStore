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
                    HStack{
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "original")
                    FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "original")
                        FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "original")
                        FeaturedPostView(captionText: "New Update", titleText: "The Sims Freeplay", subtitleText: "Bonjour from Paris", image: "original")
                    }
                })
                Divider()
                HorizontalScrollView(items: GameStorage().thisWeeksGames)
            }
        }
    }
    func loadProfile(){
        
    }
}

struct GameStorage {
    var thisWeeksGames = [GameData(id: UUID(), title: "Doodle Jump", image: "doodleJump", subtitle: "A platforming video game"), GameData(id: UUID(), title: "Doodle Jump", image: "doodleJump", subtitle: "A platforming video game"), GameData(id: UUID(), title: "Doodle Jump", image: "doodleJump", subtitle: "A platforming video game"), GameData(id: UUID(), title: "Doodle Jump", image: "doodleJump", subtitle: "A platforming video game"), GameData(id: UUID(), title: "Doodle Jump", image: "doodleJump", subtitle: "A platforming video game"), GameData(id: UUID(), title: "Doodle Jump", image: "doodleJump", subtitle: "A platforming video game")]
}

struct GameData: Identifiable{
    var id = UUID()
    var title = String()
    var image = String()
    var subtitle = String()
    
}



struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
