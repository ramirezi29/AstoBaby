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
    var chosenZodiac: Zoo? // Whatever cell they tap on should set this property. Then segue it to the baby view where it will set everything up.
    
    // MARK: - Life Cyles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          view.addVerticalGradientLayer()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? BabyDetailVC else { return }
        destinationVC.chosenZodiac = chosenZodiac
    }
}
