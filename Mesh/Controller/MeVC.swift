//
//  MeVC.swift
//  Mesh
//
//  Created by Vic Sukiasyan on 4/30/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class MeVC: UIViewController {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.emailLbl.text = Auth.auth().currentUser?.email 
    }

    
    @IBAction func signOutBtnWasPressed(_ sender: UIButton) {
        let logoutPopup = UIAlertController(title: "Logout?", message: "Are you sure?", preferredStyle: .actionSheet)
        let logoutAction = UIAlertAction(title: "Logout?", style: .destructive) { (buttonTapped) in
            do {
                try Auth.auth().signOut()
                let AuthVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC") as? AuthVC
                self.present(AuthVC!, animated: true, completion: nil)
                
            } catch {
                print(error)
            }
            
        }
        logoutPopup.addAction(logoutAction)
        present(logoutPopup, animated: true, completion: nil)
    }
    

}
