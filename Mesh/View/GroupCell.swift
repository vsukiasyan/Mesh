//
//  GroupCell.swift
//  Mesh
//
//  Created by Vic Sukiasyan on 5/2/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {


    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.memberCountLbl.text = "\(memberCount) members."
    }
    
    
}
