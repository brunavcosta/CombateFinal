//
//  ClasseInformacoes.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 05/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import Foundation
import UIKit
class Info{
    
    let imagem: String
    let titulo: String
    let url : String
    // let url = URL(string: "https://www.apple.com")
    
    init(nome:String, image: String, url: String){
        self.titulo = nome
        self.imagem = image
        self.url = url
    }
}
