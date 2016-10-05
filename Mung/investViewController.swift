//
//  investViewController.swift
//  Mung
//
//  Created by Chike Chiejine on 02/10/2016.
//  Copyright © 2016 Color & Space. All rights reserved.
//

import UIKit

class investViewController: UITableViewController {
    
    
    
    // Data
    
    var goalImages = ["pilot.jpg", "fashion.jpg", "fashion.jpg"]
    var goalTitles = ["Go to pilot school", "My Fashion Fotography Start Up", "Buy my first home"]
    
    
    
    
    func configureTableView() {
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 235
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView(frame: CGRectZero)

        configureTableView()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if goalTitles.count == 0 {
            
            return 1
            
        } else {
        
        
        return goalTitles.count
            
            
        }
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let indexRow = indexPath.row
        
        
        if goalTitles.count == 0 {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("getStarted", forIndexPath: indexPath) as! noInvestmentsViewCell
            
            //            cell.getStartedButton.hidden = true
            cell.getStarted.text = "You don’t have any investments yet."
            
            return cell
            

            
        } else {
        
            let cell = tableView.dequeueReusableCellWithIdentifier("investment", forIndexPath: indexPath) as! investViewCell
            
            let width = self.tableView.frame.width
            let height = cell.frame.height
            
            cell.overLay.frame = CGRectMake(0, 0, width, height)
            
            
            cell.goalLabel.text = goalTitles[indexRow]
            cell.goalImage.image = UIImage(named: goalImages[indexRow])
            
            return cell

            
            
            
        }
       
        
//        if indexPath.row == 0 {
//            
//
//            
//        } else {
//            
//
//
//            
//        }
        
        
        // Configure the cell...

        
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
