//
//  FirstSection.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct FirstSection: View {
    
    private struct DoubleCard{
        let uuid = UUID()
        var first: CellContentStruct
        var second: CellContentStruct
    }
    
    private var data: [DoubleCard] {
        let sData = SpotifyData().recomendations
        let maxIndex = sData.count % 2 == 0 ? sData.count : sData.count - 1
        var i = 0
        var result: [DoubleCard] = []
        while i < maxIndex {
            result.append(DoubleCard(first: sData[i], second: sData[i+1]))
            i += 2
        }
        return result
    }

    var body: some View {
        VStack (alignment: .leading) {
            GenericTitle(designedTitle: "Good evening, Luiz")
            ForEach (data, id: \.uuid) { cellData in
                HStack {
                    SmallView(cellContent: cellData.first)
                        .cornerRadius(4)
                        .frame(width: self.width(), height: self.height())
                    SmallView(cellContent: cellData.second)
                        .cornerRadius(4)
                        .frame(width: self.width(), height: self.height())
                }
            }
        }
    }
    
    func height() -> CGFloat {
        return 50
    }
    
    func width() -> CGFloat {
        return (UIScreen.main.bounds.width * 0.45)
    }
    
}

struct FirstSection_Previews: PreviewProvider {
    static var previews: some View {
        FirstSection()
    }
}
