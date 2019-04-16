//
//  Pokedex.swift
//  My Pokedex
//
//  Created by Ibrahima DANSOKO on 16/04/2019.
//  Copyright © 2018 TYP Studio. All rights reserved.
//

import Foundation

struct Pokedex: Decodable {
    enum CodingKeys: String, CodingKey {
        case pokemonEntries = "pokemon_entries"
    }
    
    var pokemonEntries: [Pokemon]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pokemonEntries = try container.decode([Pokemon].self, forKey: .pokemonEntries)
    }
}
