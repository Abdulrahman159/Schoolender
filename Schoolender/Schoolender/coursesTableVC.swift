//
//  coursesTableVC.swift
//  Schoolender
//
//  Created by Abdulrahman Al-mutawa on 01/05/2021.
//

import UIKit

class coursesTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    @IBAction func addButton(_ sender: Any) {
        let alert = UIAlertController(title: "Add Course", message: "", preferredStyle:.alert)
        alert.addTextField()
        alert.textFields![0].placeholder = "Course Name"
        alert.textFields![0].keyboardType = UIKeyboardType.default
        alert.textFields![1].placeholder = "Start Date"
        alert.textFields![1].keyboardType = UIKeyboardType.default
        alert.textFields![2].placeholder = "End Date"
        alert.textFields![2].keyboardType = UIKeyboardType.default
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: .none))
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler:{(action) in
            
            let courseName = alert.textFields![0].text
            let startDate = alert.textFields![1].text
            let endDate = alert.textFields![2].text
            
            
            
    }))
        }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
