//
//  PlatzigramProfileViewController.swift
//  Platzigram
//
//  Created by Mario Sanchez on 29/4/17.
//  Copyright © 2017 codemario. All rights reserved.
//

import Foundation
import UIKit
class PlatzigramProfileViewController: UIViewController, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib.init(nibName: "PlatzigramCollectionCell", bundle: nil), forCellWithReuseIdentifier: "platzigramCell")
    }
    
    // numero de item
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    // item de cada seccion
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "platzigramCell", for: indexPath) as! PlatzigramCollectionCell
        // enn collectionview no se usan las filas rows, la forma correcta es item
        collectionViewCell.setTitle(title: "Titulo \(indexPath.item)")
        
        
        return collectionViewCell
    }
}
