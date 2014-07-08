//
//  MyTableController.swift
//  learnSwift
//
//  Created by macpps on 14-6-4.
//  Copyright (c) 2014 paopaosa. All rights reserved.
//

import UIKit

class MyTableController: UITableViewController {
    var dataList = [12, 3, 5, 100, 20]
    var isHidden = true as Bool
    let manager = AFHTTPRequestOperationManager()

    init(style: UITableViewStyle) {
        super.init(style: style)
        // Custom initialization
    }

    init(coder aDecoder: NSCoder!) {
        super.init(coder:aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        manager.GET( "http://examples.com/json",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
            })
        var words:String! = "words"
        if words.rangeOfString("or") {
            debugPrintln("found or")
        }
        
        self.view.backgroundColor = UIColor.purpleColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // #pragma mark - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return dataList.count
    }

    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as CustomTableViewCell!
//        cell.textLabel.text = String(format: "%i", indexPath.row+1)
        // Configure the cell...
        var start:CFAbsoluteTime = CFAbsoluteTimeGetCurrent()
        cell.textLabel.text = "\(self.dataList[indexPath.row])"
        cell.textLabel.backgroundColor = UIColor.clearColor()
        println("duration is \(CFAbsoluteTimeGetCurrent() - start)")
        return cell
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
//        [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
        self.isHidden = indexPath.row % 2 == 0 ? true : false
        UIApplication.sharedApplication().setStatusBarHidden(isHidden, withAnimation: UIStatusBarAnimation.Fade)
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    override func prefersStatusBarHidden() -> Bool  {
        return self.isHidden
    }
    
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return .LightContent
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView?, canEditRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView?, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath?) {
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
    override func tableView(tableView: UITableView?, moveRowAtIndexPath fromIndexPath: NSIndexPath?, toIndexPath: NSIndexPath?) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView?, canMoveRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
