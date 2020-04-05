//
//  InformacoesViewController.swift
//  Prototipo
//
//  Created by Bruna Costa on 05/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class InformacoesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var informacoes:[Info] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        let inf1 = Info(nome: "Info 1", image: UIImage(named: "cons")!)
               let inf2 = Info(nome: "Info 2", image: UIImage(named: "corpo")!)
               let inf3 = Info(nome: "Info 3", image: UIImage(named: "partes")!)
               informacoes.append(contentsOf: [inf1, inf2, inf3])
               
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return informacoes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       // let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let inf = informacoes[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath ) as! InformacoesCollectionViewCell
        /* cell.texto.text = repeticao() + resumo[indexPath.item]
         cell.labelHist1.text = historias[indexPath.item]
         cell.hist1ImageView.image = histImages[indexPath.item]*/
         cell.infoLabel.text = inf.titulo
         cell.infoImage.image = inf.imagem
        return cell
    }
    


}
