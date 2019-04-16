//
//  Pokedex.swift
//  MyPokedex
//
//  Created by Ibrahima DANSOKO on 15/04/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import Foundation


struct Pokedex: Decodable {
    var pokemon_entries: [Pokemon]
}
//  struct PokemonEntries: Decodable {
//        var entry_number :String
//         var pokemon_species: [PokemonSpecies]
//     }
