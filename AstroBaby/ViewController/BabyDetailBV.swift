//
//  BabyDetailBV.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 3/22/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class BabyDetailBV: UIViewController {

     @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var yearPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

        yearPicker.delegate = self
        yearPicker.dataSource = self
      
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

extension BabyDetailBV: UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - YearPicker
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 50
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return "\(row + 2019)"
    }
}

