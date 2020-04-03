//
//  QAViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 03/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class QAViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            tableView.tableFooterView = UIView()
        }
        
        
        
        
        
        
        let assunto = ["Consentimento", "Corpo", "Orientações para o Responsavel"]



        
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
        
        

    }
     


