//
//  ViewController.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 31/03/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    

    
    //definindo variáveis
    
    let historias = ["Consentimento", "Corpo Humano", "Partes Intimas"]
    
    let histImages: [UIImage] = [UIImage(named:"cons")! , UIImage(named: "corpo")!, UIImage(named: "partes")!]
    
    let resumo = [" Dona Firmina e sua amiga sem noção", " Conhecimento do corpo humano de maneira didática e divertida!", " CHORONA VÍRUS"]
    
    
   
    @IBOutlet weak var collectionView: UICollectionView!
    
   
    //funcoes
    override func viewDidLoad() {
        super.viewDidLoad()

        }
    
    override func viewWillAppear(_ animated: Bool) {
        alertaCaixa()
        //f alertaCaixa() == "Sim"{
            
        }
    
    

        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return historias.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath ) as! CollectionViewCell
        cell.texto.text = repeticao() + resumo[indexPath.item]
        cell.labelHist1.text = historias[indexPath.item]
        cell.hist1ImageView.image = histImages[indexPath.item]
        return cell
        
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200.0, height: 200.0)
    }

    func repeticao () -> String{
        return ("A história irá retratar")
    }

    //botao alerta
    func alertaCaixa (){
        let alerta = UIAlertController(title: "Olá! Me chamo Pi.", message: "Se for sua primeira vez no nosso App vamos conhecer para que ele serve? ", preferredStyle: .alert)
        let acaoAvancar = UIAlertAction(title: "Sim", style: .default, handler: nil)
        let acaoAvancar1  = UIAlertAction(title: "Não", style: .default, handler: nil)
        alerta.addAction(acaoAvancar)
        alerta.addAction(acaoAvancar1)
        self.present(alerta, animated: true, completion: nil)
        
    }
    

}


