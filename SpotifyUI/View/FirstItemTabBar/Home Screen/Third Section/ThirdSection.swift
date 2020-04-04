//
//  ThirdSection.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct ThirdSection: View {

    let data: [CellContentStruct]
    let sectionTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            GenericTitle(designedTitle: sectionTitle)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(data, id: \.id) { cell in
                        BigView(cellContent: cell, haveTitle: self.haveTitle(cell: cell), haveDescription: self.haveDescription(cell: cell))
                            .padding(.horizontal, 10)
                            .frame(width: UIScreen.main.bounds.width*0.4)
                    }
                }
            }
        }
    }
    
    func haveTitle(cell: CellContentStruct) -> Bool {
        return cell.name != nil
    }
    
    func haveDescription(cell: CellContentStruct) -> Bool {
        return cell.description != nil
    }
    
}

struct ThirdSection_Previews: PreviewProvider {
    static var previews: some View {
//        ThirdSection(data: SpotifyData().topPodcasts, sectionTitle: "Popular playlists")
        ThirdSection(data: SpotifyData().topPodcasts, sectionTitle: "Section title example")
    }
}
