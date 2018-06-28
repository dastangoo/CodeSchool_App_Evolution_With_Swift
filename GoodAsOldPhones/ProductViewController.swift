//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by superuser on 6/28/18.
//  Copyright © 2018 superuser. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = UIImage(named: "download")
    }
    @IBAction func addToCartPressed(_ sender: Any) {
        print("Button tapped")
    }
    
}
