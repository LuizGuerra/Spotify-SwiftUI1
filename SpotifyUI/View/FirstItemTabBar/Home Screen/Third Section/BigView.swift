//
//  BigView.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct BigView: View {
    
    let cellContent: CellContentStruct
    @State var haveTitle: Bool
    @State var haveDescription: Bool
    
    @ViewBuilder
    var body: some View {
        VStack() {
            Image(cellContent.image)
                .resizable()
                .scaledToFit()
                .frame(width: self.width(), height: self.width())
                
            if haveTitle {
                Text(cellContent.name ?? "")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
            }
            if haveDescription {
                Text(cellContent.description ?? "")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
        }
    }
    
    func height() -> CGFloat {
        return UIScreen.main.bounds.height*0.245
    }
    
    func width() -> CGFloat {
        return UIScreen.main.bounds.width*0.4
    }
    
}

struct BigView_Previews: PreviewProvider {
    static var previews: some View {
        BigView(cellContent: SpotifyData().topPodcasts[0], haveTitle: false, haveDescription: true)
        .previewLayout(.fixed(width: 200, height: 240))
    }
}
