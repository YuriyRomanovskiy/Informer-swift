//
//  CustomTableViewCell.swift
//  Hello
//
//  Created by Yuriy Romanovskiy on 04.02.18.
//  Copyright © 2018 Yuriy Romanovskiy. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var DescriptionLbl: UILabel!
    @IBOutlet weak var DescriptionLbl2: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var ItemImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
