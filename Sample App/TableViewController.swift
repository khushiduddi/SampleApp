//
//  TableViewController.swift
//  Sample App
//
//  Created by Khushi Duddi on 6/16/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    let questions = ["What", "Who", "When", "Where", "How", "Why"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // How many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count + 1
    }

    // What goes in each row?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == questions.count {
            let fieldCell = tableView.dequeueReusableCell(withIdentifier: FieldTableViewCell.identifier, for: indexPath) as! FieldTableViewCell
            return fieldCell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = questions[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedQuestion = questions[indexPath.row]
        performSegue(withIdentifier: "Example", sender: selectedQuestion)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let exampleVC = segue.destination as! SampleViewController
        let selectedQuestion = sender as! String
        exampleVC.questionWord = selectedQuestion
    }

}
