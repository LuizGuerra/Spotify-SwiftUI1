//
//  CellContentStruct.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

public struct CellContentStruct {
    let id = UUID()
    let name: String?
    let description: String?
    let image: String
    init(name: String, description: String? = nil, image: String) {
        self.name = name
        self.description = description
        self.image = image
    }
    init(name: String? = nil, description: String, image: String) {
        self.name = name
        self.description = description
        self.image = image
    }
    init(name: String, description: String, image: String) {
        self.name = name
        self.description = description
        self.image = image
    }
}
