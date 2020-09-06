//
//  TopResultsTableViewController.swift
//  Millionaire
//
//  Created by Nikolay Trofimov on 01.09.2020.
//  Copyright © 2020 Nikolay Trofimov. All rights reserved.
//

import UIKit

class TopResultsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.statistics.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topResults", for: indexPath)
        
        let statistic = Game.shared.statistics.reversed()[indexPath.row]
        cell.textLabel?.text = statistic.ratingBar + " \(Game.shared.calcRightAnswer(statistic))%"
        cell.detailTextLabel?.text = String(statistic.currentDate)
        
        return cell
    }
    

}
