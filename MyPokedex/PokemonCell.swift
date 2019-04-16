//
//  PokemonCell.swift
//  MyPokedex
//
//  Created by Ibrahima DANSOKO on 16/04/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import UIKit

class PokemonCell: UITableViewCell {
    @IBOutlet  weak var backGround: UIView?
    @IBOutlet weak var HeaderLabel: UILabel?
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    func configure(withPokemon pokemon: Pokemon?){
        HeaderLabel?.text = "Kanto PoKedex "
        nameLabel.text = pokemon?.pokemon_species.name
        idLabel.text = "\(pokemon?.entry_number ?? 0)"
    }

}

