//
//  AnalyzedVC.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 3/9/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class AnalyzedVC: UIViewController {
    
    // MARK: - Outlets
    
    
    // MARK: - Constants and Variables
    
    // NOTE: - Parents that came from home screen controller
    
    var parentOne: Int?
    var parentTwo: Int?
    
    
    // MARK: - Life Cyles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          view.addVerticalGradientLayer()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    
    // NOTE: -  This needs to be the cell Tapped func
    
    @IBAction func zodiacButtonTapped(_ sender: UIButton) {
    }
}
