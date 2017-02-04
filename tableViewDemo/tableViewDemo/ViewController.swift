//
//  ViewController.swift
//  tableViewDemo
//
//  Created by techno krishna on 04/02/17.
//  Copyright © 2017 techno krishna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var data = [Int](1 ... 10)
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerLabel = UILabel()
            headerLabel.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.5)
            headerLabel.textColor = UIColor.whiteColor()
            headerLabel.textAlignment = .Center
            headerLabel.text = "viewForHeaderInSection-\(section+1)"
        return headerLabel
    }
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerLabel = UILabel()
            footerLabel.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
            footerLabel.textColor = UIColor.whiteColor()
            footerLabel.textAlignment = .Center
            footerLabel.text = "viewForFooterInSection-\(section+1)"
        return footerLabel
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func  tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell")
            cell.textLabel?.text = "indexPath-\(data[indexPath.row])"
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            data.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }

}

