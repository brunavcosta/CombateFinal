//
//  HistoriasViewController.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 02/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class HistoriasViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    let consImages = ["historia1" ,  "historia2",  "historia3","historia4"]

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return consImages.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {                  
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellHist", for: indexPath ) as! HistoriasCollectionViewCell
            cell.histOne.image = UIImage(named: consImages[indexPath.item])
            return cell
            
        }
            
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 300.0, height: 300.0)
    }


}
