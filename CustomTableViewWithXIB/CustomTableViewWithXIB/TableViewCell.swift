//
//  TableViewCell.swift
//  CustomTableViewWithXIB
//
//  Created by Jason on 2023/2/20.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageContainer: UIImageView!
    
    @IBOutlet weak var lblImage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
}
