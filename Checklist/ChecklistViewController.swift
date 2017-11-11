//
//  ViewController.swift
//  Checklist
//
//  Created by Pash DeVore on 11/11/17.
//  Copyright © 2017 Pash DeVore. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    //MARK: - Local variables
    var toDos = [ToDo]()
    
    //MARK: viewDid methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        if toDos.count > 0 {
            return
        }
        toDos.append(ToDo(text: "Run errands"))
    }
    
    //MARK: - Table view datasource methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell!
        let item = toDos[indexPath.row]
        cell?.textLabel?.text = item.text
               
        return cell!
    }
}

