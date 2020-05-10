//
//  ListTableViewCell.swift
//  WordList
//
//  Created by RS on 2020/05/08.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet var jap: UILabel!
    @IBOutlet var en: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
