//
//  ViewController.swift
//  Mung
//
//  Created by Chike Chiejine on 30/09/2016.
//  Copyright © 2016 Color & Space. All rights reserved.
//

import UIKit
import MXParallaxHeader

class ViewController: UIViewController, SimpleTabsDelegate {
    
    //Tab View
//    @IBOutlet weak var containerView: UIView!
//    @IBOutlet weak var profileImage: UIImageView!
//    
//    
//    
//    
//    
//    @IBOutlet weak var discoverFeed: UIView!
//    @IBOutlet weak var newFeed: UIView!
//    @IBOutlet weak var anotherFeed: UIView!


    var scrollView: MXScrollView!
    var vc:SimpleTabsViewController!
    var containerView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var frame = view.frame
        
    
        let customview = Bundle.main.loadNibNamed("customView", owner: nil, options: nil)![0] as! customView
        
        let tabContainerView = customview.tabContainerView
        
        print("CUSTOM CORNER RADIUS")
        print(customview.cornerRadius)
 
        customview.cornerRadius = 20
        
        
        
        scrollView = MXScrollView()
        scrollView.parallaxHeader.view = Bundle.main.loadNibNamed("customView", owner: nil, options: nil)![0] as! customView
        scrollView.parallaxHeader.height = 300
        scrollView.parallaxHeader.mode = MXParallaxHeaderMode.fill
        scrollView.parallaxHeader.minimumHeight = 10
        view.addSubview(scrollView)
        
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: frame.size.height - 8)
        containerView.backgroundColor = UIColor.white
        view.addSubview(containerView)
    
        
        
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "ViewController1")
        addChildViewController(controller!)
        controller?.view.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview((controller?.view)!)
        controller?.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: frame.size.height - 8)
        scrollView.addSubview(containerView)
        

        let scrollHeight = frame.size.height
        let scrollWidth = frame.size.width
        
//        NSLayoutConstraint.activate([
//            containerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: scrollWidth),
//            containerView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: scrollHeight),
//            containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
//            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
//            ])

        
        controller?.didMove(toParentViewController: self)
        
        //Tabs Confiigure
        
        let tab1 = SimpleTabItem(title:"DISCOVER", count: 3)
        let tab2 = SimpleTabItem(title:"NEWS FEED", count: 2)
        let tab3 = SimpleTabItem(title:"ANOTHER FEED", count: 0)
        vc = SimpleTabsViewController.create(self, baseView: tabContainerView, delegate: self, items: [tab1,tab2,tab3])
        vc.setTabTitleColor(UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0))
        vc.setNumberColor(UIColor.black)
        
        vc.setNumberBackgroundColor(UIColor.yellow)
        vc.setMarkerColor(UIColor(red:0.01, green:0.68, blue:0.88, alpha:1.0))
        vc.setTabTitleFont(UIFont.systemFont(ofSize: 10))
        vc.setNumberFont(UIFont.systemFont(ofSize: 14))
    
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        var frame = view.frame
        
        scrollView.frame = frame
        scrollView.contentSize.height = frame.size.height + 20
        scrollView.contentSize.width = frame.size.width
        
//        frame.size.height -= scrollView.parallaxHeader.minimumHeight
        scrollView.frame = frame
        

        
        
//
//        
//        let bottomConstraint = NSLayoutConstraint(item: containerView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 0)
//        let horizConstraint = NSLayoutConstraint(item: containerView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
//        let widthConstraint = NSLayoutConstraint(item: containerView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: scrollWidth)
//        let heightConstraint = NSLayoutConstraint(item: containerView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: scrollHeight)
//        
//        NSLayoutConstraint.activate([bottomConstraint, horizConstraint, widthConstraint, heightConstraint])
//        
        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    // MARK : - SimpleTabsDelegate
    
    func tabSelected(_ tabIndex:Int){
        
        
//        if tabIndex == 0 {
//            
//            UIView.animate(withDuration: 0.5, animations: {
//                
//
//                self.discoverFeed.alpha = 1
//                self.newFeed.alpha = 0
//                self.anotherFeed.alpha = 0
//                
//            })
//        } else if tabIndex  == 1 {
//            
//            UIView.animate(withDuration: 0.5, animations: {
//                
//                self.discoverFeed.alpha = 0
//                self.newFeed.alpha = 1
//                self.anotherFeed.alpha = 0
//                
//            })
//            
//        } else {
//            
//            UIView.animate(withDuration: 0.5, animations: {
//                
//                self.discoverFeed.alpha = 0
//                self.newFeed.alpha = 0
//                self.anotherFeed.alpha = 1
//                
//            })
//            
//        }
//
        
var indexInfo = "Index selected: \(tabIndex)"
        print(indexInfo)
    }
    


}

