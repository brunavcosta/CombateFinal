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
    let assunto = ["Consentimento", "Privacidade"]
    let textoqa = ["1) Por que a mãe pediu pra amiga perguntar pro filho se ela podia fazer carinho nele?\n\n2) No seu corpo, quem é o dono?\n\n3) Se alguém tocar em você mesmo depois de você falar não, o que você faz?\n\n4) Você pede permissão antes de tocar nas pessoas?\n\n5) Você sabe o que é consentimento? ","1) Por que a mãe pediu pras criancas se vestirem?\n\n2) Você sabe o que é privacidade?\n\n3) Quem é que pode nos ver sem roupa?\n\n4) Por que não podemos andar pelados por ai?"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            tableView.tableFooterView = UIView()
        }
        
        
        
    //MARK: - Montando TableView
    
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
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
        if let indexPath = tableView.indexPathForSelectedRow{
            
        let destVC = segue.destination as? QARedirecionaViewController
            destVC?.texto1 = textoqa[indexPath.row]
            destVC?.texto2 = assunto[indexPath.row]

            
        }
    }
    

}
