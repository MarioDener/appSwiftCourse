//
//  PlatziFeedViewController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 27/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit

class PlazigramFeedViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    
    // protoclo o delegate
    // nos ayudara a recibir los eventos de esta
    // tabla y pedir info de esta tabla
    // recibe objetos con el evento relacionado
    
    
    /*
     * numero de celdas
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    /*
     *
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var newCell = tableView.dequeueReusableCell(withIdentifier: "newPost") as! PlatzigramPostCell
        newCell.setPostUserName(userName: "User  \(indexPath.row)")
        newCell.setPostTitle(postTitle: "Title \(indexPath.row)")
        
        return newCell
    }
    
    // delegate select
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("La celda fue: \(indexPath.row)")
    }
    
    
    
}
