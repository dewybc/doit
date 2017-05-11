//
//  completeTaskViewController.swift
//  doit
//
//  Created by Andrew VanDamme on 5/10/17.
//  Copyright © 2017 Andrew VanDamme. All rights reserved.
//

import UIKit




class completeTaskViewController: UIViewController {
    
    @IBOutlet weak var completeTaskLabel: UILabel!
    
    var task = Task()
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            completeTaskLabel.text = "❗️\(task.name)"
        } else {
            completeTaskLabel.text = task.name
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
