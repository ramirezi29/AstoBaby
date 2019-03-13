//
//  AnalyzedVC.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 3/9/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class AnalyzedVC: UIViewController {

    // MARK: - Constants and Variables
    var parentOne: Int?
    var parentTwo: Int?
    
    // MARK: - Life Cyles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("parent 1: \(String(describing: parentOne) )\nparent 2:\(String(describing: parentTwo))")
    }
}
