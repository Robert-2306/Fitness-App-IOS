//
//  HistoryViewController.swift
//  tab
//
//  Created by Student on 02.05.2023.
//

import UIKit

var tasks = [String]()

class HistoryViewController: UIViewController{
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title =  "Workouts"
        
        tableView.delegate = self
        tableView.dataSource = self
        
        if !UserDefaults().bool(forKey: "setup"){
            UserDefaults().set(true, forKey: "setup")
            UserDefaults().set(0, forKey: "count")        }
        
        updateTasks()
    }
    
    func updateTasks(){ //hello
        
        tasks.removeAll()
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        for x in 0..<count{
            
            if let task = UserDefaults().value(forKey: "task_\(x+1)") as? String {
                tasks.append(task)
            }
            
        }
        
        tableView.reloadData()
        
    }
    
    @IBAction func didTapAdd(){
        
        let vc = storyboard?.instantiateViewController(identifier: "entry") as! EntryViewController
        vc.title = "New Workout"
        vc.update = {
            DispatchQueue.main.async {
                self.updateTasks()
            }
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
    
    extension HistoryViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        //let vc2 = storyboard?.instantiateViewController(identifier: "task") as! TaskViewController
        //vc2.title = "New Workout"
        //vc2.task = task[indexPath.row]
        
        //navigationController?.pushViewController(vc, animated: true)
    }
    
    extension HistoryViewController: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return tasks.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell_h", for: indexPath)
            
            cell.textLabel?.text = tasks[indexPath.row]
            
            return cell
        }
    }
