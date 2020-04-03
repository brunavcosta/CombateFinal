//
//  AutoChangeScript.swift
//  Prototipo
//
//  Created by Bruna Costa on 01/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class AutoChangeScript: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.performSegue(withIdentifier: "MenuScene", sender: self)
        }

    
    

    }
    
}
