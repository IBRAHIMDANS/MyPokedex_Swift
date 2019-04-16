//
//  RequestManager.swift
//  My Pokedex
//
//  Created by Ibrahima DANSOKO on 16/04/2019.
//  Copyright © 2018 TYP Studio. All rights reserved.
//

import Alamofire
import SwiftyJSON


class RequestManager {

    static func getPokemons(success: @escaping (Data)->(), failure: @escaping (Error)->()) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        Alamofire.request(
            Constants.api.pokedex,
            method: .get
        )
            .responseData(completionHandler: { (dataResponse) in
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
                switch dataResponse.result {
                case .success(let value):
                    success(value)
                case .failure(let error):
                    failure(error)
                }
            })
    }

    static func getPokemonDetails(url: URL, success: @escaping (Data)->(), failure: @escaping (Error)->()) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        Alamofire.request(url, method: .get)
            .responseData(completionHandler: { (dataResponse) in
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
                switch dataResponse.result {
                case .success(let value):
                    success(value)
                case .failure(let error):
                    failure(error)
                }
        })
    }
}

