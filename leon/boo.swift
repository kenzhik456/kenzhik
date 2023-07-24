//
//  boo.swift
//  leon
//
//  Created by user on 13.07.2023.
//

import UIKit

class boo: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var view1: UIImageView!
    @IBOutlet weak var name1: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
