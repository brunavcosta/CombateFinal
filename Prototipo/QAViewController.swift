//
//  QAViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 03/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class QAViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - DEFININDO VARIAVEL
    let assunto = ["Consentimento", "Corpo Humano", "Orientações para o Responsável", "Como agir perante um caso de abuso infantil"]
    let textoqa = ["A","B","C","D"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            tableView.tableFooterView = UIView()
        }
        
        
        
    //MARK: - Montando TableView
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 50
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return assunto.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt
            indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! TableViewCell
            
            //cell.textLabel?.text = temas[indexPath.row]
            cell.qa.text = assunto[indexPath.row]
        
            return cell
            
        }
    //MARK: TA DUPLICANDO A VIEW
   /* func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let texto = textoqa[indexPath.row]
        
        performSegue(withIdentifier: "caminhoSegue", sender: self)
        
    }*/
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "caminhoSegue"{
        let destVC = segue.destination as? QARedirecionaViewController
            destVC?.texto1 = sender as? ClasseQA

            
        }
    }
    

}
