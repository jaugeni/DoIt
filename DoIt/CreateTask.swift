//
//  CreateTask.swift
//  DoIt
//
//  Created by YAUHENI IVANIUK on 11/2/16.
//  Copyright © 2016 be connected club inc. All rights reserved.
//

import UIKit

class CreateTask: UIViewController {
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importentSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importentSwitch.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    
}
