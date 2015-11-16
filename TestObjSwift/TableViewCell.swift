//
//  TableViewCell.swift
//  TestObjSwift
//
//  Created by Vien Vu  on 10/27/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbTest: UILabel!
    @IBOutlet weak var btnTest: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func testPressed(sender: AnyObject) {
        print("test")
    }
}
