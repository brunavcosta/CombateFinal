//
//  ClasseNova.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 03/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import Foundation
import UIKit
class Historia{
    
    let titulo:String
    let imagem: String
    let resumo: String
    let url : String
    
    
    init(nome:String, image: String, resumo : String, pdf: String){
        self.titulo = nome
        self.imagem = image
        self.resumo = resumo
        self.url = pdf
    }
}
