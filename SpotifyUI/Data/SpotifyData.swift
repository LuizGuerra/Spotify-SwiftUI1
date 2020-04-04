//
//  SpotifyData.swift
//  SpotifyUI
//
//  Created by Luiz Pedro Franciscatto Guerra on 03/04/20.
//  Copyright © 2020 LuizGuerra. All rights reserved.
//

import Foundation

struct SpotifyData {
    
    private var loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    
    var recomendations: [CellContentStruct] {
        return [
        CellContentStruct(name: "Liked Songs", image: getRandomColor()),
        CellContentStruct(name: "Chopin - Best of", image: getRandomColor()),
        CellContentStruct(name: "Tchaikovsky: The Nutcracker", image: getRandomColor()),
        CellContentStruct(name: "Global Top 50", image: getRandomColor()),
        CellContentStruct(name: "Pyotr Ilich Tchaikovsky", image: getRandomColor()),
        CellContentStruct(name: "Summer Fellings", image: getRandomColor()),
        CellContentStruct(name: "Summer Fellings", image: getRandomColor())
        ]
    }
    
    var recentlyPlayed: [CellContentStruct] {
        return [
            CellContentStruct(name: "Liked Songs", image: getRandomColor()),
            CellContentStruct(name: "Chopin - Best of", image: getRandomColor()),
            CellContentStruct(name: "Tchaikovsky: The Nutcracker", image: getRandomColor()),
            CellContentStruct(name: "Global Top 50", image: getRandomColor())
        ]
    }
    
    var topPodcasts: [CellContentStruct] {
        return [
            CellContentStruct(description: "Your Daily Podcasts", image: getRandomColor()),
            CellContentStruct(description: "The Misfits Podcast", image: getRandomColor()),
            CellContentStruct(description: "The Steven Universe Podcast", image: getRandomColor()),
            CellContentStruct(description: "Browse Podcasts", image: getRandomColor())
        ]
    }
    
    var popularPlayLists: [CellContentStruct] {
        return [
            CellContentStruct(name: "Today's Top Hits", description: loremIpsum, image: getRandomColor()),
            CellContentStruct(name: "Rock Classics", description: loremIpsum, image: getRandomColor()),
            CellContentStruct(name: "Cantando no Carro", description: loremIpsum, image: getRandomColor()),
            CellContentStruct(name: "Novidade da Semana", description: loremIpsum, image: getRandomColor()),
            CellContentStruct(name: "This is Marília Mendonça", description: loremIpsum, image: getRandomColor()),
            CellContentStruct(name: "Pop Up", description: loremIpsum, image: getRandomColor()),
            CellContentStruct(name: "É Hit!", description: loremIpsum, image: getRandomColor())
        ]
    }
    
    var madeForYou: [CellContentStruct] {
            return [
                CellContentStruct(description: loremIpsum, image: getRandomColor()),
                CellContentStruct(description: loremIpsum, image: getRandomColor()),
                CellContentStruct(description: loremIpsum, image: getRandomColor()),
                CellContentStruct(description: loremIpsum, image: getRandomColor()),
                CellContentStruct(description: loremIpsum, image: getRandomColor()),
                CellContentStruct(description: loremIpsum, image: getRandomColor()),
                CellContentStruct(description: loremIpsum, image: getRandomColor()),
                CellContentStruct(description: loremIpsum, image: getRandomColor())
            ]
        }    
    
    private func getRandomColor () -> String {
        switch Int.random(in: 0..<7) {
            case 0: return "redBox"
            case 1: return "orangeBox"
            case 2: return "yellowBox"
            case 3: return "greenBox"
            case 4: return "blueBox"
            case 5: return "indigoBox"
        default:
            return "purpleBox"
        }
    }
    
    
}
