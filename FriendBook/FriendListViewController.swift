//
//  FriendListViewController.swift
//  FriendBook
//
//  Created by Albert Saucedo on 10/18/15.
//  Copyright © 2015 Albert Saucedo. All rights reserved.
//

import UIKit



class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let friends = ["Albert", "Chely"]
    var selectedFriend = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.backgroundColor = UIColor.yellowColor()
        cell.textLabel!.text = friends[indexPath.row];
        cell.textLabel?.textAlignment = NSTextAlignment.Center
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedFriend = friends[indexPath.row]
        self.performSegueWithIdentifier("friendListToFriendDetailsSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! FriendDetailViewController
        
        detailVC.name = selectedFriend
        
        if selectedFriend == "Albert" {
            detailVC.birthday = "Jan 15"
        } else {
            detailVC.birthday = "Aug 11"
        }
    }
}
