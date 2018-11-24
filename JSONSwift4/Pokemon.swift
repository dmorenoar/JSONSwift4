//
//  Pokemon.swift
//  JSONSwift4
//
//  Created by dmorenoar on 23/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import Foundation

class Pokemon: Codable {
   var nombre:String
    var tipo:String
    var stats:[String:Int] = [String:Int]()
    var imagen:String
    
    
    /*init?(json:[String:Any]){
        guard let nombre = json["nombre"] as? String,
        let tipo = json["tipo"] as? String,
        let stats = json["stats"] as? [String:Int],
        let imagen = json["imagen"] as? String else {
                return
        }
        
        self.nombre = nombre
        self.tipo = tipo
        self.stats = stats
        self.imagen = imagen
        
    }*/

    init(nombre:String, stats:[String:Int],tipo:String, imagen:String){
        self.nombre = nombre
        self.tipo = tipo
        self.stats = stats
        self.imagen = imagen
        
    }
    
    
}
