//
//  PokemonDetail.swift
//  MyPokedex
//
//  Created by Ibrahima DANSOKO on 15/04/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import Foundation

struct PokemonDetails: Decodable {
    var name: String
    var habitat: GeneriqueNameUrl
    var color: GeneriqueNameUrl
    var shape: GeneriqueNameUrl
    var flavor_text_entries: [FlavorTextEntries]
}
struct GeneriqueNameUrl: Decodable {
    var name:String
    var url:String
}
struct FlavorTextEntries:Decodable {
    var flavor_text : String
    var language : String
    var version: String
}
func getFlavorText(intLanguage language: String, fromVersion version:String) -> FlavorTextEntries {
    for text in FlavorTextEntries {
        if text.language.name == language && text.version.name == version {
            return text
        }
    }
}

