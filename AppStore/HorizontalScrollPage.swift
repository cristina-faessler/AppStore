//
//  HorizontalScrollPage.swift
//  AppStore
//
//  Created by Cristina Bolohan on 02.12.20.
//

import SwiftUI

struct HorizontalScrollView: View {
    var items: [GameData]
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false) {
                ForEach(0 ..< 3){
                    row in
                    HStack{
                        ForEach(0 ..< self.items.count / 3){
                            column in
                            
                            GameCell(data: items[self.determineCell(row: row, column: column)])
                        }
                    }
                }
            }
        }
    }
    func determineCell(row: Int, column: Int)->Int{
        return ((((column + 1) * 3) - row) - 1)
    }
}

struct GameCell: View {
    var data: GameData
    var body: some View{
        HStack{
            Image(data.image).resizable().frame(width: 50, height: 50, alignment: .leading).cornerRadius(10)
            VStack(alignment: .leading){
                Text(data.title)
                Text(data.subtitle).foregroundColor(.gray)
            }
        }.padding().frame(width: 300, alignment: .leading)
    }
}

struct HorizontalScrollPage_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView(items: GameStorage().thisWeeksGames)
    }
}
