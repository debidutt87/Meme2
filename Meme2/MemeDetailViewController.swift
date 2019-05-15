//
//  MemeDetailViewController.swift
//  Meme2
//
//  Created by Debidutt Prasad on 15/05/2019.
//  Copyright © 2019 Bot Consultancy. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    var meme : MemeViewController.Meme?
    
    @IBOutlet weak var memedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memedImage.image = meme?.memedImage
        self.title = "Meme Detail"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
}
