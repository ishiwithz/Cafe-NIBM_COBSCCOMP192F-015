//
//  CustomTableViewCell.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-03-07.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFoodPic: UIImageView!
    @IBOutlet weak var lblFoodPrice: UILabel!
    @IBOutlet weak var lblFoodName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   // override func setSelected(_ selected: Bool, //animated: Bool) {
       // super.setSelected(selected, animated: //animated)

        // Configure the view for the selected state
   // }

}
