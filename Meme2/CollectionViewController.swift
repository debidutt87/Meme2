//
//  CollectionViewController.swift
//  Meme2
//
//  Created by Debidutt Prasad on 24/04/2019.
//  Copyright © 2019 Bot Consultancy. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController{

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView!.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.appDelegate.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let memesGrid = self.appDelegate.memes[(indexPath as NSIndexPath).row]
        cell.memedImage.image = memesGrid.memedImage
      
        return cell
    }
    
    
    
}
