//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by superuser on 6/28/18.
//  Copyright © 2018 superuser. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        return cell
    }
}
