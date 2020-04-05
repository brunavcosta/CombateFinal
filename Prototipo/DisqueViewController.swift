//
//  DisqueViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 02/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class DisqueViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let alert = UIAlertController(title: "Deseja Proceder a Denúncia?", message: "Se uma de nossas crianças está em risco, por favor continue. ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ligar", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    //@IBOutlet weak var numeros: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    let disque = ["Disque 100", "Não sei", "Orientações para o Responsavel"]



    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return disque.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        //cell.textLabel?.text = temas[indexPath.row]
        cell.numero.text = disque[indexPath.row]
    
        return cell
        
    }
    
    

}
 
