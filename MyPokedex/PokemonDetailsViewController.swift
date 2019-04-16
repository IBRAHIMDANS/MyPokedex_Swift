//
//  PokemonDetailsViewController.swift
//  MyPokedex
//
//  Created by Ibrahima DANSOKO on 15/04/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import UIKit

class PokemonDetailsViewController: UIViewController {
    var pokemonId: Pokemon?
    var details: PokemonDetails?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RequestManager.getPokemon(url: (pokemonId?.pokemon_species.url) ?? "",
            succes: { (datas) in
            let decoder = JSONDecoder()
            self.details = ( try? decoder.decode(PokemonDetails.self, from: datas))
     //           print(datas)
                self.updateUI()
        }) { (Error) in
            print(Error)
        }
    }
    @IBOutlet weak var PokemonName: UILabel!
    @IBOutlet weak var PokemonHabitat: UILabel!
    @IBOutlet weak var PokemonColor: UILabel!
    @IBOutlet weak var PokemonShape: UILabel!
    @IBOutlet weak var PokemonText: UILabel!
    
    func updateUI(){
        PokemonName.text = details?.name
        PokemonHabitat.text = details?.habitat.name
        PokemonColor.text = details?.color.name
        PokemonShape.text = details?.shape.name
        PokemonText.text = details?.flavor_text_entries[0].flavor_text
        
      
    }


}
