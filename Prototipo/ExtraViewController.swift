//
//  ExtraViewController.swift
//  Prototipo
//
//  Created by Ana Clara Filgueiras Granato on 06/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit
import WebKit
class ExtraViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var informacao: Info?
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: informacao?.url, ofType: "pdf")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        webView.load(request)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
