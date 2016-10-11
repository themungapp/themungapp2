//
//  goalViewCell.swift
//  Mung
//
//  Created by Chike Chiejine on 03/10/2016.
//  Copyright © 2016 Color & Space. All rights reserved.
//

import UIKit

class goalViewCell: UITableViewCell {
    
    
    @IBOutlet weak var goalImage: UIImageView!
    @IBOutlet weak var goalLabel: UILabel!



    let overLay = UIView()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.goalImage.clipsToBounds = true

        let width = self.frame.size.width
        let height = self.goalImage.frame.height
        
        overLay.backgroundColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:0.7)
        overLay.isHidden = false
        self.goalImage.addSubview(overLay)
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
