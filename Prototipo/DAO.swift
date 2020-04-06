//
//  DAO.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 06/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import Foundation
class DAO{
static var instance = DAO()
    
    var historias:[Historia] = []
    var informacoes:[Info]=[]
    var ultimaHistoriaEscolhida:Historia?
    private init(){
        criaHistorias()
        criaNoticias()
    }
    
    
    
    func criaHistorias() {
        let hist1 = Historia(nome: "Consentimento", image:"capa", resumo: " a importância de manifestar aprovação em situações aonde alguém toca uma criança sem a permissão dela ou de seus pais, além de deixar claro o direito pelo seu próprio corpo.", pdf: "lista")
        let hist2 = Historia(nome: "Corpo Humano", image:"corpo", resumo: " conhecimento do corpo humano de maneira didática e divertida, mostrando as partes do corpo, para que servem e para quem podemos mostrar.", pdf: "lista")
        let hist3 = Historia(nome: "Partes Intimas", image: "partes", resumo: " conhecimento do corpo humano de maneira didática e divertida!", pdf: "lista")
        historias.append(contentsOf: [hist1, hist2, hist3])

    }
    func criaNoticias(){
        let inf1 = Info(nome: "Info 1",image: "cons")
        let inf2 = Info(nome: "Info 2",image:"corpo")
        let inf3 = Info(nome: "Info 3",image: "partes")
        informacoes.append(contentsOf: [inf1, inf2, inf3])
    }
    
}
