//
//  ExercisesTableViewController.swift
//  tab
//
//  Created by Student on 26.04.2023.
//

import UIKit

class ExercisesTableViewController: UIViewController {

    @IBOutlet weak var exercisesTableView: UITableView!
 
//    var exercises = ["Cardio", "Chest", "Back", "Legs", "Shoulders", "Triceps", "Biceps", "Abs"]
    var cardio = ["Run", "Swim", "Walk", "Hike", "Cycling"]
    var chest = ["Push-Up", "Flat Bench Press", "Cable Fly", "Chest Press"]
    var back = ["Pull-Up", "Lat Pulldown", "Chin Up", "Low Row"]
    var legs = ["Squat", "Leg Press", "Leg Extension Machine", "RDL", "Hamstrings Machine", "Calf Raises"]
    var shoulders = ["Military Press", "Lateral Dumbbell Raises", "Front Dumbbell Raises", "Cable Face Pull"]
    var triceps = ["Bar Push Down", "Dips", "Rope Push Down", "Dumbell Overhead Extension"]
    var biceps = ["Dumbell Curl", "Barbell Curl", "Hammer Curl", "Preacher Curls"]
    var abs = ["Crunch", "Plank", "Cable Crunch"]
    
    var id: String = "asd"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        exercisesTableView.delegate = self
        exercisesTableView.dataSource = self
    }
}

extension ExercisesTableViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let record_vc = storyboard?.instantiateViewController(withIdentifier: "recordViewController") as! RecordViewController
        
        switch id{
        case "Cardio":
            print(cardio[indexPath.row])
            record_vc.id = cardio[indexPath.row]
        case "Chest":
            print(chest[indexPath.row])
            record_vc.id = chest[indexPath.row]
        case "Back":
            print(back[indexPath.row])
            record_vc.id = back[indexPath.row]
        case "Legs":
            print(legs[indexPath.row])
            record_vc.id = legs[indexPath.row]
        case "Shoulders":
            print(shoulders[indexPath.row])
            record_vc.id = shoulders[indexPath.row]
        case "Triceps":
            print(triceps[indexPath.row])
            record_vc.id = triceps[indexPath.row]
        case "Biceps":
            print(biceps[indexPath.row])
            record_vc.id = biceps[indexPath.row]
        case "Abs":
            print(abs[indexPath.row])
            record_vc.id = abs[indexPath.row]
        default:
            print(legs[indexPath.row])
            record_vc.id = legs[indexPath.row]
        }
        
        present(record_vc, animated: true)

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
        case "Shoulders":
            return shoulders.count
        case "Triceps":
            return triceps.count
        case "Biceps":
            return biceps.count
        case "Abs":
            return abs.count
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
        case "Shoulders":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = shoulders[indexPath.row]
            return cell
        case "Triceps":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = triceps[indexPath.row]
            return cell
        case "Biceps":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = biceps[indexPath.row]
            return cell
        case "Abs":
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = abs[indexPath.row]
            return cell
        default:
            let cell = exercisesTableView.dequeueReusableCell(withIdentifier: "exercisesCell", for: indexPath)
            cell.textLabel?.text = legs[indexPath.row]
            return cell
        }
    }
}
