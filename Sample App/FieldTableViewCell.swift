//
//  FieldTableViewCell.swift
//  Sample App
//
//  Created by Khushi Duddi on 6/21/21.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate {

    static let identifier = "FieldTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    
    @IBOutlet var field: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        field.placeholder = "Add a comment"
        field.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
