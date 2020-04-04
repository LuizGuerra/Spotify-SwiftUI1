//
//  ContentView.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    
    var sData = SpotifyData()
    let backgroundColor = LinearGradient(
        gradient: Gradient(colors: [
            Color(red: 86/255, green: 79/255, blue: 158/255),
            Color(red: 27/255, green: 27/255, blue: 27/255)
        ]),
        startPoint: .topLeading,
        endPoint: UnitPoint(x: 0.2,
                            y: 0.2))
    
//            NavigationLink(destination: ) {  }
    var body: some View {
        NavigationView {
            ZStack (alignment: .top) {
                backgroundColor.edgesIgnoringSafeArea(.all)
                ScrollView (.vertical) {
                    VStack (alignment: .leading) {
                        FirstSection().padding(.horizontal)
                        SecondSection()
                            .padding([.top, .leading, .trailing])
                        ThirdSection(data: sData.topPodcasts, sectionTitle: "Top podcasts").padding(.horizontal)
                        ThirdSection(data: sData.popularPlayLists, sectionTitle: "Popular playlists").padding([.horizontal, .top])
                        ThirdSection(data: sData.madeForYou, sectionTitle: "Made for you").padding([.horizontal, .top])
                    }
                }
            }
        .navigationBarItems(trailing: Image("Configurations"))
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
