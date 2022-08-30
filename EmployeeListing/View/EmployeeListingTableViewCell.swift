//
//  EmployeeListingTableViewCell.swift
//  EmployeeListing
//
//  Created by Kavya on 24/08/22.
//

import UIKit

class EmployeeListingTableViewCell: UITableViewCell {

    @IBOutlet weak var lblEmpName: UILabel!
    @IBOutlet weak var lblEmpPhoneNumber: UILabel!
    @IBOutlet weak var lblEmpEmailId: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
