//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by superuser on 6/28/18.
//  Copyright © 2018 superuser. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 365, height: 800)
    }
}
