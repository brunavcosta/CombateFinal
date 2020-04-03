//
//  InfoViewController.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 01/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()

    }
    
    @IBOutlet weak var tableView: UITableView!
    
    let temas = ["Sentimentos", "Realidade Brasileira", "Orientações para o Responsavel"]



    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return temas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        //cell.textLabel?.text = temas[indexPath.row]
        cell.nomeTema.text = temas[indexPath.row]
    
        return cell
        
    }

}
