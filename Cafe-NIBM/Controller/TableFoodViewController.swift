//
//  TableFoodViewController.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-03-07.
//

import UIKit

class TableFoodViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    let FoodArray = ["Bun","Burger","Pizza","Noodles"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
