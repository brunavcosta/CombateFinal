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
    
  /*  let historias = ["Consentimento", "Corpo Humano", "Partes Intimas"]
    
    let histImages: [UIImage] = [UIImage(named:"cons")! , UIImage(named: "corpo")!, UIImage(named: "partes")!]
    
    let resumo = [" Dona Firmina e sua amiga sem noção", " Conhecimento do corpo humano de maneira didática e divertida!", " CHORONA VÍRUS"]
    */
    
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    var historias:[Historia]{return DAO.instance.historias}
    //funcoes
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cont = 1
        
        
        if cont == 1{
            alertaCaixa()
            cont += 1
        }
    

        }
    
    

        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return historias.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let hist = historias[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath ) as! CollectionViewCell
       /* cell.texto.text = repeticao() + resumo[indexPath.item]
        cell.labelHist1.text = historias[indexPath.item]
        cell.hist1ImageView.image = histImages[indexPath.item]*/
        cell.texto.text = repeticao() + hist.resumo
        cell.labelHist1.text = hist.titulo
        cell.hist1ImageView.image = UIImage(named: hist.imagem)
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
        let alerta = UIAlertController(title: "Olá, Meu nome é Pi!", message: "Bem-vindo ao meu mundo.\nSe quiser saber mais sobre ele clique em Objetivos na Tab Bar. :) ", preferredStyle: .alert)
        let acaoAvancar = UIAlertAction(title: "Continuar", style: .default, handler: nil)
        alerta.addAction(acaoAvancar)
        self.present(alerta, animated: true, completion: nil)
        
        
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let proxV = segue.destination as? HistoriasViewController
        if let indexPath = collectionView.indexPathsForSelectedItems?.first{
            proxV?.historia = historias[indexPath.row]
        }
    }
     
     
     /*
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let cell = sender as? UICollectionViewCell,
            let indexPath = self.collectionView.indexPath(for: cell) {

              let vc = segue.destination as! HistoriasViewController //Cast with your DestinationController
              //Now simply set the title property of vc
              vc.title = historias.[indexPath.row] //as String
          }
     }
    */




}
