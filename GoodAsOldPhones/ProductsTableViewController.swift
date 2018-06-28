//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by superuser on 6/28/18.
//  Copyright © 2018 superuser. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames {
            return pNames.count;
        }
        return 0;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
//        if cell.textLabel != nil {
//            cell.textLabel.text = "Good bye friend"
//        }
        
        let productName = productNames?[indexPath.row]
        
        if let pName = productName {
            cell.textLabel?.text = pName
        }
            
//        cell.imageView?.image = UIImage(named: "something")
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathforCell(cell) else {
                    return
                }
            productVC?.productName = productNames?[indexPath.row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1907 Wall Street", "1921 Dial Phone", "1937 Desk Set", "1984 Motoroal Portable"]
    }
}
