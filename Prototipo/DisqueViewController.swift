//
//  DisqueViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 02/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class DisqueViewController: UIViewController {


    @IBAction func botaoDisque100(_ sender: UIButton) {
        alertaCaixa()
    }
    
    func alertaCaixa(){
        let alert = UIAlertController(title: "Deseja Proceder a Denúncia?", message: "Se uma de nossas crianças está em risco, por favor continue. ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ligar", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Não", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //@IBOutlet weak var numeros: UILabel!
    

    
    
    

}
 
