//
//  SampleViewController.swift
//  Sample App
//
//  Created by Khushi Duddi on 6/17/21.
//

import UIKit

class SampleViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var questionWord = "Why?"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = questionWord
        
        if questionWord == "Who" {
            definitionLabel.text = "Who are you?"
        }
        if questionWord == "What" {
            definitionLabel.text = "What are you doing today?"
        }
        if questionWord == "Where" {
            definitionLabel.text = "Where is it?"
        }
        if questionWord == "Why" {
            definitionLabel.text = "Why is this happening?"
        }
        if questionWord == "When" {
            definitionLabel.text = "When will you be back?"
        }
        if questionWord == "How" {
            definitionLabel.text = "How are you?"
        }
    }

}
