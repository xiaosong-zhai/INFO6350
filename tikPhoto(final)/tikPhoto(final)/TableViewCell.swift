//
//  TableViewCell.swift
//  tikPhoto(final)
//
//  Created by Jason on 2023/4/22.
//

import UIKit

class TableViewCell: UITableViewCell{

    @IBOutlet weak var imageConatiner: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblLocation: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
