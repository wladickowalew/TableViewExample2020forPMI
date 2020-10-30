//
//  MyTableViewController.swift
//  TableViewExample
//
//  Created by Wladislaw Kowalew on 24/10/2020.
//  Copyright © 2020 Wladislaw Kowalew. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    var mas1 = [String](arrayLiteral: "Red", "Orange", "Yellow", "Green", "Cyan", "Blue", "Violet")
    var mas2 = [String] (arrayLiteral: "GTA", "GTA2", "GTA3", "GTA4", "GTA5")
    var mas = [[String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        mas.append(mas1)
        mas.append(mas2)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return mas.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mas[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell;
        if (indexPath.section == 0) {
            cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        }else{
            cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        }
        cell.textLabel?.text = mas[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String!{
        if (section == 0){
            return "Color of Rainbow"
        }
        if (section == 1){
            return "GTA Series"
        }
        return ""
    }
    

    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        vw.backgroundColor = UIColor.red
        let label = UILabel()
        label.text = "Try"
        label.bounds = CGRect(x: 0,y: 0,width:  100,height:  20)
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.blue
        vw.addSubview(label)
        
        return vw
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
