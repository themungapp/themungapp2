//
//  noInvestmentsViewCell.swift
//  Mung
//
//  Created by Chike Chiejine on 03/10/2016.
//  Copyright © 2016 Color & Space. All rights reserved.
//

import UIKit

class noInvestmentsViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var getStarted: UILabel!
    @IBOutlet weak var getStartedButton: UIButton!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        

        self.separatorInset = UIEdgeInsetsZero
        self.layoutMargins = UIEdgeInsetsZero
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
