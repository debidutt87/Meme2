//
//  TableViewController.swift
//  Meme2
//
//  Created by Debidutt Prasad on 24/04/2019.
//  Copyright © 2019 Bot Consultancy. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var tb: UITableView!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tb.delegate = self
        self.tb.dataSource = self
        self.navigationItem.title = "Sent Memes"
    }
    
        override func viewWillAppear(_ animated: Bool) {
        tb.reloadData()
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tb.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath) as! MemeTableViewCell
        let memesRow = appDelegate.memes[(indexPath as NSIndexPath).row]
        cell.MemedImageView.image = memesRow.memedImage
        cell.topLabel.text = memesRow.topText
        cell.bottomLabel.text = memesRow.bottomText
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return appDelegate.memes.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let memeDetailViewController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        memeDetailViewController.meme = appDelegate.memes[(indexPath as NSIndexPath).row]
        navigationController!.pushViewController(memeDetailViewController, animated: true)
        
    }
    
}
