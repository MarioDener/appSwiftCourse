//
//  PlatzigramPostCell.swift
//  Platzigram
//
//  Created by Mario Sanchez on 27/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramPostCell: UITableViewCell {
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userNameLabel.text = ""
        postTitle.text = ""
        
    }
    
    
    public func setPostTitle(postTitle:String){
        self.postTitle.text = postTitle
    }
    
    public func setPostUserName(userName:String){
        self.userNameLabel.text = userName
    }
    
}
