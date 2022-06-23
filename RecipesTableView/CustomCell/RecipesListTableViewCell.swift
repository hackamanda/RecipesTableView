//
//  recipesListTableViewCell.swift
//  RecipesTableView
//
//  Created by Amanda Hack on 06/06/22.
//

import UIKit

class RecipesListTableViewCell: UITableViewCell {
    


    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var recipeName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
