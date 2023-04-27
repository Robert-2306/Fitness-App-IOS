//
//  RecordViewController.swift
//  tab
//
//  Created by Student on 26.04.2023.
//

import UIKit

class RecordViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!
    
    var id: String = "asd"

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        return true
    }
    
    @IBAction func saveTask(){
        
    }
    
}
