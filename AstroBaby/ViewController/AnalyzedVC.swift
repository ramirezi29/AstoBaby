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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
