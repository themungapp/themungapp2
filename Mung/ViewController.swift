//
//  ViewController.swift
//  Mung
//
//  Created by Chike Chiejine on 30/09/2016.
//  Copyright © 2016 Color & Space. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SimpleTabsDelegate, UITableViewDataSource, UITableViewDelegate {
    

    var header : StretchHeader!
    var vc:SimpleTabsViewController!
    let tabContainerView = UIView()

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
//        tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        setupHeaderView()
        //Tabs Confiigure
        
        let tab1 = SimpleTabItem(title:"DISCOVER", count: 3)
        let tab2 = SimpleTabItem(title:"NEWS FEED", count: 2)
        let tab3 = SimpleTabItem(title:"FOLLOWERS", count: 0)
        let tab4 = SimpleTabItem(title:"FOLLOWING", count: 0)
        vc = SimpleTabsViewController.create(self, baseView: tabContainerView, delegate: self, items: [tab1,tab2,tab3,tab4])
        vc.setTabTitleColor(UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0))
        vc.setNumberColor(UIColor.black)
        
        vc.setNumberBackgroundColor(UIColor.yellow)
        vc.setMarkerColor(UIColor(red:0.01, green:0.68, blue:0.88, alpha:1.0))
        vc.setTabTitleFont(UIFont.systemFont(ofSize: 10))
        vc.setNumberFont(UIFont.systemFont(ofSize: 14))
        
    
    }
    
    
    
    func setupHeaderView() {
        
    
        
        let options = StretchHeaderOptions()
        options.position = .fullScreenTop
        
        header = StretchHeader()
        header.stretchHeaderSize(headerSize: CGSize(width: view.frame.size.width, height: 160),
                                 imageSize: CGSize(width: view.frame.size.width, height: 120),
                                 controller: self,
                                 options: options)
        header.imageView.backgroundColor = UIColor.clear
//        header.imageView.image = UIImage(named: "profile.jpg")
        
        //Measurements 
        
        let headerWidth = header.imageView.frame.width
        let headerHeight = header.imageView.frame.height
        let headerWidthCenter = headerWidth / 2
        let headerHeightCenter = headerHeight / 2
        // custom
        let profileImage = UIImageView()
        profileImage.frame = CGRect(x: headerWidthCenter - 30, y: headerHeightCenter - 30, width: 60, height: 60)
        profileImage.image = UIImage(named: "profile.jpg")
        profileImage.layer.cornerRadius = 30
        profileImage.layer.borderColor = UIColor.white.cgColor
        profileImage.layer.borderWidth = 3.0
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleAspectFill
        header.addSubview(profileImage)
        
        
  
        tabContainerView.frame = CGRect(x: 0, y: profileImage.frame.origin.y + 90, width: headerWidth, height: 80)
        header.addSubview(tabContainerView)
    
        
  

        tableView.tableHeaderView = header
    }


    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - ScrollView Delegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        header.updateScrollViewOffset(scrollView)
        
//        // NavigationHeader alpha update
//        let offset : CGFloat = scrollView.contentOffset.y
//        if (offset > 50) {
//            let alpha : CGFloat = min(CGFloat(1), CGFloat(1) - (CGFloat(50) + (navigationView.frame.height) - offset) / (navigationView.frame.height))
//            navigationView.alpha = CGFloat(alpha)
//            
//        } else {
//            navigationView.alpha = 0.0;
//        }
    }
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        let cellTwo = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! goalViewCell
        
        
        cellTwo.goalLabel.text = "index -- \((indexPath as NSIndexPath).row)"

        
        return cell
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

