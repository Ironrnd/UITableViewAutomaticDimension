//
//  CustomTableViewController.swift
//  TableProSfift
//
//  Created by Andrew Belozerov on 02.04.16.
//  Copyright © 2016 Andrew Iron. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    
    var data = ["Record one" : "Идейные соображения высшего порядка",
                "Record two" : "Консультация с широким активом позволяет выполнять важные задания",
                "Record three" : "Развитие различных форм деятельности влечет за собой процесс внедрения ",
                "Record four" : "Модернизации систем массового участия",
                "Record five" : "Постоянное информационно-пропагандистское обеспечение ",
                "Record six" : "Способствует подготовки и реализации системы",
                "Record seven" : "Рыбатекст является альтернативой традиционному",
                "Record eight" : "Наполнит любой макет непонятным смыслом"]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell") as! KeyValueCell
        let keys = [String](data.keys)
        cell.keyLabel.text = keys[indexPath.row]
        cell.valueLabel.text = data[keys[indexPath.row]]
        
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}
