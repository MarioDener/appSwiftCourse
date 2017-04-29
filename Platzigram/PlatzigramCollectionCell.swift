//
//  PlatzigramCollectionCell.swift
//  Platzigram
//
//  Created by Mario Sanchez on 29/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramCollectionCell: UICollectionViewCell {
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = ""
    }
    
    func setTitle(title: String){
        self.titleLabel.text = title
    }
    
}
