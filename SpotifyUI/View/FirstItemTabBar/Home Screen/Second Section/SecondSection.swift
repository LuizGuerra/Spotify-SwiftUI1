//
//  SecondSection.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct SecondSection: View {
    var data = SpotifyData().recentlyPlayed
    var body: some View {
        VStack (alignment: .leading) {
            GenericTitle(designedTitle: "Recently played")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (alignment: .top) {
                    ForEach(data, id: \.id) { cell in
                        MediumView(cellContent: cell)
                        .frame(width: UIScreen.main.bounds.width*0.3)
                    }
                }
            }
        }
    }
}

struct SecondSection_Previews: PreviewProvider {
    static var previews: some View {
        SecondSection()
    }
}
