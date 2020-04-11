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
        let hist1 = Historia(nome: "Consentimento", image:"capa", resumo: " a importância de manifestar aprovação em situações aonde alguém toca uma criança sem a permissão dela ou de seus pais, além de deixar claro o direito pelo seu próprio corpo.", pdf: "consfinal")
        let hist2 = Historia(nome: "Em Breve", image:"privacidade", resumo: " conhecimento do corpo humano de maneira didática e divertida, mostrando as partes do corpo, para que servem e para quem podemos mostrar.", pdf: "lista")
        historias.append(contentsOf: [hist1, hist2])

    }
    func criaNoticias(){
        let inf1 = Info(nome: "Como Identificar Sinais de Abuso Infantil",image: "inf2", url: "https://www.childhood.org.br/10-maneiras-de-identificar-possiveis-sinais-de-abuso-sexual-infanto-juvenil")
        let inf2 = Info(nome: "Mito x Realidade",image:"inf1", url: "https://www.childhood.org.br/abuso-sexual-infantil-mitos-x-realidades")
          let inf3 = Info(nome: "Realidade Brasileira",image:"inf3", url: "https://www.childhood.org.br/a-violencia-sexual-infantil-no-brasil")
        informacoes.append(contentsOf: [inf1, inf2, inf3])
    }
    
}
