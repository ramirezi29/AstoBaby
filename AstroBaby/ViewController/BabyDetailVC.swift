//
//  BabyDetailBV.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 3/22/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class BabyDetailVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var expectedWindowLabel: UILabel!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var yearPicker: UIPickerView!
    @IBOutlet weak var zodiacImageView: UIImageView!
    
    // MARK: - Landing Pad Properties
    
    var chosenZodiac: ZodiacNumber?
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        yearPicker.delegate = self
        yearPicker.dataSource = self
        updateView()
        expectedWindowLabel.text = "select a year"
        outputLabel.text = ""
    }
    
    func updateView() {
        
        chosenZodiac = ZodiacNumber.pisces
        var goalComponents = DateComponents()
        goalComponents.year = yearPicker.selectedRow(inComponent: 0) + 2019
        goalComponents.calendar = Calendar.current
        var goalStart = Date()
        var goalEnd = Date()
        var conceptionStart = Date()
        var conceptionMiddle = Date()
        var conceptionEnd = Date()
        var desiredZodiac = ""
        guard let chosenZodiac = chosenZodiac else { return }
        
        switch chosenZodiac.rawValue {
            
        case 1 : // March 21 - April 20
            goalComponents.month = 3
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 4
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            desiredZodiac = "Aries"
            
            
        case 0: // April 21 - May 21
            goalComponents.month = 4
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 5
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            desiredZodiac = "Taurus"
            
        case 2: // May 22 - June 21
            goalComponents.month = 5
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 6
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            desiredZodiac = "Gemini"
            
        case 3: // June 22 - July 22
            goalComponents.month = 6
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 7
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            desiredZodiac = "Cancer"
            
        case 4: // July 23 - August 21
            goalComponents.month = 7
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 8
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            desiredZodiac = "Leo"
            
        case 5: // August 22 - September 23
            goalComponents.month = 8
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 9
            goalComponents.day = 23
            goalEnd = goalComponents.date!
            desiredZodiac = "Virgo"
            
        case 6: // September 24 - October 23
            goalComponents.month = 9
            goalComponents.day = 24
            goalStart = goalComponents.date!
            goalComponents.month = 10
            goalComponents.day = 23
            goalEnd = goalComponents.date!
            desiredZodiac = "Libra"
            
        case 7: // October 24 - November 22
            goalComponents.month = 10
            goalComponents.day = 24
            goalStart = goalComponents.date!
            goalComponents.month = 11
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            desiredZodiac = "Scorpio"
            
        case 8: // November 23 - December 22
            goalComponents.month = 11
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 12
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            desiredZodiac = "Sagittarius"
            
        case 9: // December 23 - January 20
            goalComponents.month = 12
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 1
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            desiredZodiac = "Capricorn"
            
        case 10: // January 21 - February 19
            goalComponents.month = 1
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 2
            goalComponents.day = 19
            goalEnd = goalComponents.date!
            desiredZodiac = "Aquarius"
            
        case 11: // February 20 - March 20
            goalComponents.month = 2
            goalComponents.day = 20
            goalStart = goalComponents.date!
            goalComponents.month = 3
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            desiredZodiac = "Pisces"
            
        default: return
            
        }
        
        zodiacImageView.image = UIImage(named: desiredZodiac.lowercased())
        
        nameLabel.text = desiredZodiac.uppercased()
        conceptionStart = goalStart.subtract38Weeks
        conceptionMiddle = conceptionStart.add15Days
        conceptionEnd = goalEnd.subtract38Weeks
        
        expectedWindowLabel.text = "If born between \(goalStart.mmmmd) and \(goalEnd.mmmmd)."
        
        outputLabel.text = "In order to have a baby between \(goalStart.mmmmd) and \(goalEnd.mmmmd), the suggested conception window is from:\n\n\(conceptionStart.mmddyy) to \(conceptionEnd.mmddyy).\n\n\n\n\nThe optimal conception date is\n\n\(conceptionMiddle.mmddyy)\n\nbecause it lands right in the middle of that window."
    }
}

extension BabyDetailVC: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        updateView()
    }
}

