//
//  ShadowView.swift
//  Mesh
//
//  Created by Vic Sukiasyan on 4/30/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
        
    }



}
