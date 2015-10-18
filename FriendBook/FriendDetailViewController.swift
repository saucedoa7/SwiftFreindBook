//
//  FriendDetailViewController.swift
//  FriendBook
//
//  Created by Albert Saucedo on 10/18/15.
//  Copyright © 2015 Albert Saucedo. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblBirthday: UILabel!
    
    var name = ""
    var birthday = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lblName.text = name
        self.lblBirthday.text = birthday
    }
}
