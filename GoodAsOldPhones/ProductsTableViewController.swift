//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by superuser on 6/28/18.
//  Copyright © 2018 superuser. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let p = products {
            return p.count;
        }
        return 0;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
//        if cell.textLabel != nil {
//            cell.textLabel.text = "Good bye friend"
//        }
        
        let product = products?[indexPath.row]
        
        if let p = product {
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }
        }
            
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathforCell(cell) else {
                    return
                }
            productVC?.product = products?[indexPath.row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Street"
        product1.productImage = "something"
        product1.cellImage = "something"
        
        product2.name = "1907 Wall Street"
        product2.productImage = "something"
        product2.cellImage = "something"

        product3.name = "1907 Wall Street"
        product3.productImage = "something"
        product3.cellImage = "something"

        product4.name = "1907 Wall Street"
        product4.productImage = "something"
        product4.cellImage = "something"

        products = [product1, product2, product3, product4]
    }
}
