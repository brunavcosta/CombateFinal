//
//  TableViewCell.swift
//  Prototipo
//
//  Created by Bruna Costa on 02/04/20.
//  Copyright © 2020 Ana Clara Filgueiras Granato. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nomeTema: UILabel!
    
    @IBOutlet weak var numero: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
