//
//  AppleMusicTableViewCell.swift
//  tableViewController practice
//
//  Created by 賴柏穎 on 2021/7/12.
//

import UIKit

class AppleMusicTableViewCell: UITableViewCell {
    
    @IBOutlet weak var albumImageView: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
