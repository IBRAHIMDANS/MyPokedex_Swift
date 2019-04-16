//
//  Pokemon.swift
//  MyPokedex
//
//  Created by Ibrahima DANSOKO on 15/04/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import Foundation

struct Pokemon: Decodable {
    var entry_number:Int
    var pokemon_species: PokemonSpecies
}

struct PokemonSpecies: Decodable {
    var name: String
    var url : String
}
