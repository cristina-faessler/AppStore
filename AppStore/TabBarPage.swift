//
//  TabBarPage.swift
//  AppStore
//
//  Created by Cristina Bolohan on 19.11.20.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @State var selected: Int = 0
    var body: some View {
        TabView(selection: $selected){
            TodayView().tabItem {
                Text("Today")
            }
            GamesView().tabItem {
                Text("Games")
                
            }
            AppsView().tabItem {
                Text("Apps")
            }
            ArcadeView().tabItem {
                Text("Arcade")
            }
            SearchView().tabItem {
                Text("Search")
            }
        } 
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
