//
//  RootView.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView{
            FeedView()
                .tabItem({
                    VStack{
                        Image("Home")
                        Text("Home")
                    }
                }).tag(0)
            Text("Search page still to come")
                .font(.title)
                .tabItem({
                    VStack {
                        Image("Search")
                        Text("Search")
                    }
                }).tag(1)
            Text("Your library still to come")
                .font(.title)
                .tabItem({
                    VStack {
                        Image("Library")
                        Text("Your Library")
                    }
                }).tag(1)
        }.onAppear {
            UITabBar.appearance().barTintColor = UIColor(red: 27/255, green: 27/255, blue: 27/255, alpha: 1)
            UITabBar.appearance().tintColor = .white
        }
    }
    
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
