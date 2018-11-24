//
//  ViewController.swift
//  JSONSwift4
//
//  Created by dmorenoar on 23/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pokemonsEntrenador = [Pokemon]()
    var pokemon:Pokemon?
    let url = URL(string: "https://private-5ec35-pokemonswift.apiary-mock.com/pokemons")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        decodeJsonData(url:url!)
        encodeJsonData()
        
    }
    
    func decodeJsonData(url:URL){
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
 
            do {
                
                let decoder = JSONDecoder()
                //decoder.keyDecodingStrategy = .convertFromSnakeCase
                let pokemonsEntrenador = try decoder.decode([Pokemon].self, from: data)
                //self.pokemonsEntrenador = try decoder.decode([Pokemon].self, from: data)
                print(pokemonsEntrenador[0].stats["ataque"] as! Int)
                
            } catch let err {
                print("Err", err)
            }
            }.resume()
        
    }

    func encodeJsonData(){
        let pokemon = Pokemon(nombre: "Squitle", stats: ["ataque":29,"defensa":23], tipo: "agua", imagen: "squitle")
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        
        do {
            let data = try encoder.encode(pokemon)
            let jsonString = String(data: data, encoding: .utf8)
            print(jsonString)
            
        }catch let error{
            print("error codificando", error)
        }
        
    }

}

