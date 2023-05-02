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
//        
//        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
//        view.addSubview(textField)
//        textField.center = view.center
//        textField.backgroundColor = .systemBlue
        
        //self.myTextField
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//        saveTask()
//
//        return true
//    }
    
//    @IBAction func saveTask(){
//
//    }
    
}
