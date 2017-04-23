//
//  ViewController.swift
//  simpleSNS
//
//  Created by 康乗秀人 on 2017/04/23.
//  Copyright © 2017 康乗秀人. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var arrPhotos: [String] = [
        "timeline01.jpg",
        "timeline02.jpg",
        "timeline03.jpg",
        "timeline04.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Table view
        tableView.rowHeight = 415 as CGFloat
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // (* Required) Number of rows
        return arrPhotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // (*Required) Cell appearance
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedCell", for: indexPath) as! FeedCell
        cell.imgPhoto.image = UIImage(named: arrPhotos[indexPath.row])
        cell.imgPhoto.contentMode = .scaleAspectFill
        cell.imgPhoto.clipsToBounds = true
        
        return cell
    }
    
    // Mark: - UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        //(* Optional) Header size zero
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        //(* Optional) Header size zero
        return CGFloat.leastNormalMagnitude
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}
















































