//
//  MediumView.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct MediumView: View {
    let cellContent: CellContentStruct
    var body: some View {
        VStack {
            Image(cellContent.image)
                .resizable()
                .frame(width: self.squareSideSize(), height: self.squareSideSize())
            Text(cellContent.name ?? "")
                .font(.footnote)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            .lineLimit(nil)
        }
    }
    
    func squareSideSize() -> CGFloat {
        return UIScreen.main.bounds.width*0.3
    }
    
}

struct MediumView_Previews: PreviewProvider {
    static var previews: some View {
        MediumView(cellContent: SpotifyData().recomendations[0])
            .previewLayout(.fixed(width: 125, height: 160))
    }
}
