//
//  SmallView.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import SwiftUI

struct SmallView: View {
    
    var cellContent: CellContentStruct
    
    var body: some View {
        ZStack (alignment: .leading) {
            Color(red: 50/255, green: 50/255, blue: 50/255)
            VStack (alignment: .center) {
                    HStack {
                        Image(cellContent.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            
                        Text(cellContent.name ?? "")
                            .font(.body)
                            .foregroundColor(Color.white)
                            .padding(.trailing, 10.0)
                            
                            
                    }
                }
        }
        
    }
}

struct SmallView_Previews: PreviewProvider {
    static var previews: some View {
        SmallView(cellContent: SpotifyData().recomendations[0])
            .previewLayout(.fixed(width: 186.3, height: 70))
    }
}
