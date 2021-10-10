//
//  GameCell.swift
//  ParseTutorial
//
//  Created by Gerdin Ventura on 10/9/21.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet weak var playerName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
