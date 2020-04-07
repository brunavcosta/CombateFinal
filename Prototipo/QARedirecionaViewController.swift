//
//  QARedirecionaViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 06/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class QARedirecionaViewController: UIViewController {
    
    @IBOutlet weak var tituloInfo: UILabel!
    @IBOutlet weak var textoInfo: UILabel!
    var texto1:String?
    var texto2:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textoInfo.text = texto1
        self.tituloInfo.text = texto2
        }
        
   
        //textoInfo.text = texto1?.texto
    }
        // Do any additional setup after loading the view.
    


