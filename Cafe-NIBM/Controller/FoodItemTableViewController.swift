//
//  FoodItemTableViewController.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-03-07.
//

import UIKit
import Firebase
import SwiftyJSON

class FoodItemTableViewController: UITableViewController {
    
      var Foodcategories : [FoodCategory] = []
      var FoodItems : [FoodItem] = []
    
      var FoodCollection = [String: Any]()
    
    
      var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        getFoodItems()
    }
    
    func getFoodItems(){
        ref.child("FoodItems").observe(.value) { (snapshot) in
            
            if let data = snapshot.value as? [String : Any] {
                
                for categorykeys in data {
                    
                    self.Foodcategories.append(FoodCategory(Name: categorykeys.key ))
                }
                
                for category in data {
                    
                   // self.Foodcategories.append(FoodCategory(Name: category.key ))
                    
                    if let items = category.value as? [String : Any] {
                        
                        for Singleitem in items {
                            
                            if let iteminfo = Singleitem.value as? [String : Any]{
                                
                                
                                    self.FoodItems.append(FoodItem(
                                                                Active: iteminfo["Active"] as! Bool,
                                                                Description: iteminfo["Description"] as!  String,
                                                                Discount: iteminfo["Discount"] as! Double,
                                                                Name: iteminfo["Name"] as!  String,
                                                                Price: iteminfo["Price"] as!  Double,
                                                                Image: iteminfo["Image"] as! String))
                            
                            }
                        }
                        
                    }
                    
                    self.tableView.reloadData()
                    
                }
                   
                
            }
        }
        
        
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return Foodcategories.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodItemCell", for: indexPath) as! CustomTableViewCell
        
        cell.textLabel?.text = Foodcategories[indexPath.section].Name
        
        cell.setUpView(fooditem: FoodItems[indexPath.row])
        
        return cell
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
