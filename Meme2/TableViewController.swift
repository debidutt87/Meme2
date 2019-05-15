//
//  TableViewController.swift
//  Meme2
//
//  Created by Debidutt Prasad on 24/04/2019.
//  Copyright © 2019 Bot Consultancy. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource{
    
    
    @IBOutlet weak var tb: UITableView!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tb.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tb.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath) as! MemeTableViewCell
//        let cell = tb.dequeueReusableCell(withIdentifier: "memesRow")!
        let memesRow = appDelegate.memes[(indexPath as NSIndexPath).row]
        cell.MemedImageView.image = memesRow.memedImage
        cell.topLabel.text = memesRow.topText
        cell.bottomLabel.text = memesRow.bottomText
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return appDelegate.memes.count
    }
    
}
