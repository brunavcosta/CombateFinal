//
//  QARedirecionaViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 06/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class QARedirecionaViewController: UIViewController {
    
   let assunto = ["Consentimento", "Corpo Humano", "Orientações para o Responsável", "Como agir perante um caso de abuso infantil"]
   let textoqa = ["A","B","C","D"]
    @IBOutlet weak var tituloInfo: UILabel!
    @IBOutlet weak var textoInfo: UILabel!
    var texto1:ClasseQA?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        }
        
   func setUI(){
        tituloInfo.text = ClasseQA(texto: "", titulo: "Consentimento").titulo
        textoInfo.text = ClasseQA(texto: "Nessa historia apresentamos o conceito de consentimento e o poder de dizer não.\nComo contemplar o direito das crianças de terem seu espaço pessoal respeitado? Como apresentar a possibilidade do não para as crianças?\nConsentimento é a aprovação de que o outro faça algo, nesse caso especificamente faça algo que diga respeito a nosso corpo.\nO entendimento desse conceito é de vital importância para um desenvolvimento saudável.\nSaber que o nosso corpo nos pertence possibilita que criemos limites entres nós e o outro, nos protegendo e nos empoderando de nossos corpos.", titulo: "").texto
        //textoInfo.text = texto1?.texto
    }
        // Do any additional setup after loading the view.
    }


