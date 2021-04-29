//
//  CustomTableViewCell.swift
//  Cafe-NIBM
//
//  Created by Ishanka Withanage on 2021-03-07.
//

import UIKit
import Kingfisher

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFoodPic: UIImageView!
    @IBOutlet weak var lblFoodPrice: UILabel!
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var lblFoodDiscount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   override func setSelected(_ selected: Bool, animated: Bool) {
       super.setSelected(selected, animated: animated)
   }
    
    func setUpView(fooditem : FoodItem) {
        
        lblFoodName.text = fooditem.Name
        lblFoodPrice.text = " LKR \(fooditem.Price) "
        imgFoodPic.kf.setImage(with: URL(string: fooditem.Image))
        
        if fooditem.Discount > 0 {
            
            lblFoodDiscount.isHidden = false
            lblFoodDiscount.text = " \(fooditem.Discount) % "
            
        }else{
            
            lblFoodDiscount.isHidden = true
            lblFoodDiscount.text = " \(fooditem.Discount) % "
        }
        
    }

}
