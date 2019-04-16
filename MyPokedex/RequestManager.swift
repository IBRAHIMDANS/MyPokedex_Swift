//
//  RequestManager.swift
//  MyPokedex
//
//  Created by Ibrahima DANSOKO on 15/04/2019.
//  Copyright © 2019 Ibrahima DANSOKO. All rights reserved.
//

import Foundation
import Alamofire

class RequestManager {
    let instance  = RequestManager()
    static func getPokemons(succes: @escaping (Data) ->(), faillure: @escaping (Error) ->()){
        Alamofire.request("https://pokeapi.co/api/v2/pokedex/2", method: .get)
            .responseData { (datas) in
                switch datas.result {
                case .success(let value):
                    succes(value)
                case.failure(let error):
                    faillure(error)
                }
        }
    }
    
    static func getPokemon(url: Any, succes: @escaping (Data) ->(), faillure: @escaping (Error) ->()){
        Alamofire.request("\(url)", method: .get)
            .responseData { (datas) in
                switch datas.result {
                case .success(let value):
                    succes(value)
                case.failure(let error):
                    faillure(error)
                }
        }
    }
    
}
