//
//  TrainingZoneViewController.swift
//  tab
//
//  Created by Student on 26.04.2023.
//

import UIKit

class TrainingZoneViewController: UIViewController {

    @IBOutlet weak var trainingZoneTableView: UITableView!
    
    var trainingZone = ["Cardio", "Chest", "Back", "Legs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        trainingZoneTableView.delegate = self
        trainingZoneTableView.dataSource = self
    }
}

extension TrainingZoneViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You clicked on \(trainingZone[indexPath.row])")
        let vc = storyboard?.instantiateViewController(withIdentifier: "exercisesViewController") as! ExercisesTableViewController
        vc.id = trainingZone[indexPath.row]
        present(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trainingZone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = trainingZoneTableView.dequeueReusableCell(withIdentifier: "trainingZoneCell", for: indexPath)
        cell.textLabel?.text = trainingZone[indexPath.row]
        return cell
    }
}
