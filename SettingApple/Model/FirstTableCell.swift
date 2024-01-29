//
//  FirstTableCell.swift
//  SettingApple
//
//  Created by Saahil Kaushal on 07/12/23.
//

import UIKit

class FirstTableCell: UITableViewCell {
    
    
    @IBOutlet weak var switchSystem: UISwitch!
    
    @IBOutlet weak var pictureImg: UIImageView!
    @IBOutlet weak var nameBtn: UIButton!
    
    var valueChanged = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameBtn.tag = 0
       
    }

    @IBAction func switchBtn(_ sender: UISwitch) {
    }
    
    
}
