//
//  customView.swift
//  Mung
//
//  Created by Chike Chiejine on 11/10/2016.
//  Copyright © 2016 Color & Space. All rights reserved.
//

import UIKit
import MXParallaxHeader

@IBDesignable class customView: UIView, MXParallaxHeaderProtocol {
    


    
    var view: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tabContainerView: UIView!
    
    

    
    
    class func instanciateFromNib() -> customView {

        
        return Bundle.main.loadNibNamed("customView", owner: nil, options: nil)![0] as! customView
        
        
    }
    
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
         profileImage.layer.cornerRadius = cornerRadius
         profileImage.layer.masksToBounds = cornerRadius > 0
        }
    }
 
    // MARK: - <MXParallaxHeader>
    
    
    func parallaxHeaderDidScroll(_ parallaxHeader: MXParallaxHeader) {
//        let angle = parallaxHeader.progress * CGFloat(M_PI) * 2
//        self.profileImage.transform = CGAffineTransform.identity.rotated(by: angle)
        
        

        
    }
    
}
