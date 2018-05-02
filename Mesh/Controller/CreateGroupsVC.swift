//
//  CreateGroupsVC.swift
//  Mesh
//
//  Created by Vic Sukiasyan on 5/1/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {
    
    
    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailSearchTextField: InsetTextField!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var groupMemeberLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
    }
    
    
}
