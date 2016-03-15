//
//  ListViewController.swift
//  SnsUISample
//
//  Created by 中垣 健志 on 2016/03/15.
//  Copyright © 2016年 itvirtuoso. All rights reserved.
//

import UIKit

class ListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    private var postings = [Posting]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        for var i = 0; i < 10; i++ {
            self.postings.append(Posting())
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.postings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Posting", forIndexPath: indexPath) as! ListPostingCell
        let posting = self.postings[indexPath.row]
        cell.nameLabel.text = posting.name
        cell.dateLabel.text = posting.date
        cell.contentLabel.text = posting.content
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(indexPath.row * 20 + 50)
    }
}
