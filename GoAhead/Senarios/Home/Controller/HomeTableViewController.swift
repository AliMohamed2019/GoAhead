//
//  HomeTableViewController.swift
//  GoAhead
//
//  Created by Mustafa on 11/21/19.
//  Copyright © 2019 Maged. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class HomeTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 150
        //tableView.rowHeight = UITableView.automaticDimension
       
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let  cell = tableView.dequeueReusableCell(withIdentifier: "CategoryHomeTableViewCell", for: indexPath) as! CategoryHomeTableViewCell
        
        cell.categoryHomeNam.setTitle("aaaaa", for: .normal)
              
         

              
        return cell
     }
 
    @IBAction func menuBtnPressed(_ sender: UIBarButtonItem) {
        let sMenu = storyboard?.instantiateViewController(identifier: "SideMenuNavigationController")
               sMenu?.modalPresentationStyle = .fullScreen
               present(sMenu!, animated: true, completion: nil)
    }
    
 

    
}
