//
//  createTaskViewController.swift
//  doit
//
//  Created by Andrew VanDamme on 5/10/17.
//  Copyright © 2017 Andrew VanDamme. All rights reserved.
//

import UIKit

class createTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        
        
       
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        
        //Line to start using CoreData
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Save context to CoreData
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop back
        navigationController!.popViewController(animated: true)
    }
    
}
