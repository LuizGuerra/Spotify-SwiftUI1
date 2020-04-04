//
//  GenericTitle.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct GenericTitle: View {
    var designedTitle: String
    var body: some View {
        Text(designedTitle)
            .font(.system(size: 23))
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
    }
}

struct GenericTitle_Previews: PreviewProvider {
    static var previews: some View {
        GenericTitle(designedTitle: "Recomended on Spotify")
    }
}
