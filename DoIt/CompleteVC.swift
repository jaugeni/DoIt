//
//  CompleteVC.swift
//  DoIt
//
//  Created by YAUHENI IVANIUK on 11/2/16.
//  Copyright © 2016 be connected club inc. All rights reserved.
//

import UIKit

class CompleteVC: UIViewController {
    
    
    @IBOutlet weak var taskLbl: UILabel!
    
    var task: Task? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important{
            taskLbl.text = "❗️\(task!.name!)"
        } else {
            taskLbl.text = task!.name!
        }
        
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        navigationController!.popViewController(animated: true)
        
        
    }
    
    
}
