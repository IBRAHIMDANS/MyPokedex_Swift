//
//  ViewController.swift
//  MyPokedex
//
//  Created by Ibrahima DANSOKO on 15/04/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import UIKit
import Alamofire

class PokemonListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var pokedex: Pokedex?
    
    override func viewDidLoad() {
        tableView.dataSource = self
        super.viewDidLoad()
  
        RequestManager.getPokemons(succes: { (datas) in
            let decoder = JSONDecoder()
            self.pokedex = ( try? decoder.decode(Pokedex.self, from: datas))
            self.tableView.reloadData()
        }) { (Error) in
            print(Error)
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokedex?.pokemon_entries.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell_ID", for:indexPath) as? PokemonCell {
         cell.configure(withPokemon: pokedex?.pokemon_entries[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PokemonDetailsSegue" {
            if let pokemonDetailsViewController = segue.destination as? PokemonDetailsViewController,
                let indexPathSelected = tableView.indexPathForSelectedRow
                {
             pokemonDetailsViewController.pokemonId = pokedex?.pokemon_entries[indexPathSelected.row]
                    tableView.deselectRow(at: indexPathSelected, animated: false)
            }
        }
    }
    
  
}

