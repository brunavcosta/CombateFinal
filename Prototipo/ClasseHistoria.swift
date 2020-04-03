//
//  ClasseHistoria.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 03/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import Foundation
import UIKit

class Historia{
    
    let titulo:String
    let imagem: UIImage
    let resumo: String
    
    init(nome:String, image: UIImage, resumo : String){
        self.titulo = nome
        self.imagem = image
        self.resumo = resumo
    }
    
}

