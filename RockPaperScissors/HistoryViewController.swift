//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Nitish on 24/10/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var historyMatch = [RPSMatch]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyMatch.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("HereComesHistory")!
        let mugUpHistory = historyMatch[indexPath.row]
        
        if mugUpHistory.p1==mugUpHistory.p2{
            cell.textLabel?.text = "Tie"
        }else if mugUpHistory.p1.defeats(mugUpHistory.p2){
            cell.textLabel?.text = "Win"
        }else{
            cell.textLabel?.text = "Lose"
        }
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
}
