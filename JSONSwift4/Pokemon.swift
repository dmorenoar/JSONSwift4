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

    init(nombre:String, stats:[String:Int],tipo:String, imagen:String){
        self.nombre = nombre
        self.tipo = tipo
        self.stats = stats
        self.imagen = imagen
        
    }
    
    
}
