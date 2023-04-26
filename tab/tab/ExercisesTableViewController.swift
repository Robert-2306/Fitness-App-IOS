//
//  ExercisesTableViewController.swift
//  tab
//
//  Created by Student on 26.04.2023.
//

import UIKit

class ExercisesTableViewController: UIViewController {

    @IBOutlet weak var exercisesTableView: UITableView!
 
//    var exercises = ["Cardio", "Chest", "Back", "Legs"]
    var cardio = ["Run", "Swim", "Walk", "Hike"]
    var chest = ["Push-Up", "Flat Bench Press"]
    var back = ["Pull_Up", "Lat Pulldown"]
    var legs = ["Squat", "Leg Press"]
    var id: String = "asd"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        exercisesTableView.delegate = self
        exercisesTableView.dataSource = self
    }

}

extension ExercisesTableViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch id{
        case "Cardio":
            print(cardio[indexPath.row])
        case "Chest":
            print(chest[indexPath.row])
        case "Back":
            print(back[indexPath.row])
        case "Legs":
            print(legs[indexPath.row])
        default:
            print(legs[indexPath.row])
        }

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch id{
        case "Cardio":
            return cardio.count
        case "Chest":
            return chest.count
        case "Back":
            return back.count
        case "Legs":
            return legs.count
        default:
            return legs.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
//        cell.textLabel?.text = exercises[indexPath.row]
//        return cell
        
        switch id{
        case "Cardio":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = cardio[indexPath.row]
            return cell
        case "Chest":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = chest[indexPath.row]
            return cell
        case "Back":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = back[indexPath.row]
            return cell
        case "Legs":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = legs[indexPath.row]
            return cell
        default:
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = legs[indexPath.row]
            return cell
        }
    }
}
