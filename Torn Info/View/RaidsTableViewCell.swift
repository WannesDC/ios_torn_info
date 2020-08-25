//
//  RaidsTableViewCell.swift
//  Torn Info
//
//  Created by Wannes De Craene on 25/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import UIKit

class RaidsTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var assaultLabel: UILabel!
    @IBOutlet weak var defenceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with raid: Raid) {
        
        
        timeLabel.text = "Started \(raid.convertTimeStamp())"
        assaultLabel.text = "Assault: \(raid.assaultingFaction) has lost \(raid.defendingScore) respect"
        defenceLabel.text = "Defence: \(raid.defendingFaction) has lost \(raid.assaultingScore) respect"
    }

}
