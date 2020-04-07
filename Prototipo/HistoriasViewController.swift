//
//  HistoriasViewController.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 02/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit
import WebKit

class HistoriasViewController: UIViewController{
    let imagesToShare: [UIImage] = [#imageLiteral(resourceName: "piruzito saca so")]
    
    @IBOutlet weak var webView: WKWebView!
    var historia: Historia?
    //let pdfTitle = historia?.url
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   
    //funcoes
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        

        // Do any additional setup after loading the view.
    }
    
    //MARK: NAO APAGA CACA
  /*  func presentShareSheet(){
        let image = UIImage(named: "partes")!
        let imagesToShare = [image]
        let shareSheet = UIActivityViewController(activityItems: imagesToShare, applicationActivities: nil)
        shareSheet.popoverPresentationController?.sourceView = self.view
        //shareSheet.excludeActivityTypes = [.postToVimeo, .postToWeibo]
        self.present(shareSheet, animated:true, completion: nil)
    }*/
    
}
