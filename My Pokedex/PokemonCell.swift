//
//  PokemonCell.swift
//  My Pokedex
//
//  Created by Ibrahima DANSOKO on 16/04/2019.
//  Copyright © 2018 TYP Studio. All rights reserved.
//

import UIKit

class PokemonCell: UITableViewCell {

    @IBOutlet weak var pokedexEntryLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    public func configure(withPokemon pokemon: Pokemon) {
        pokedexEntryLabel.text = String(format: "%03d", pokemon.entry)
        nameLabel.text = pokemon.specie.name.capitalized
    }
}
