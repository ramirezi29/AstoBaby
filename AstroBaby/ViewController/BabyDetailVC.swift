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
    
    var chosenZodiac: Zoo?
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        yearPicker.delegate = self
        yearPicker.dataSource = self
        expectedWindowLabel.text = "select a year"
        outputLabel.text = ""
        if let zodiac = chosenZodiac {
            nameLabel.text = zodiac.rawValue.uppercased()
            zodiacImageView.image = UIImage(named: zodiac.rawValue.lowercased())
        }
    }
    
    func updateView() {
        
        var goalComponents = DateComponents()
        goalComponents.year = yearPicker.selectedRow(inComponent: 0) + 2019
        goalComponents.calendar = Calendar.current
        var goalStart = Date()
        var goalEnd = Date()
        var conceptionStart = Date()
        var conceptionMiddle = Date()
        var conceptionEnd = Date()
        guard let chosenZodiac = chosenZodiac else { return }
        
        switch chosenZodiac.rawValue {
            
        case Zoo.aries.rawValue: // March 21 - April 20
            goalComponents.month = 3
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 4
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            
            
        case Zoo.taurus.rawValue: // April 21 - May 21
            goalComponents.month = 4
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 5
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            
        case Zoo.gemini.rawValue: // May 22 - June 21
            goalComponents.month = 5
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 6
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            
        case Zoo.cancer.rawValue: // June 22 - July 22
            goalComponents.month = 6
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 7
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            
        case Zoo.leo.rawValue: // July 23 - August 21
            goalComponents.month = 7
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 8
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            
        case Zoo.virgo.rawValue: // August 22 - September 23
            goalComponents.month = 8
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 9
            goalComponents.day = 23
            goalEnd = goalComponents.date!
            
        case Zoo.libra.rawValue: // September 24 - October 23
            goalComponents.month = 9
            goalComponents.day = 24
            goalStart = goalComponents.date!
            goalComponents.month = 10
            goalComponents.day = 23
            goalEnd = goalComponents.date!
            
        case Zoo.scorpio.rawValue: // October 24 - November 22
            goalComponents.month = 10
            goalComponents.day = 24
            goalStart = goalComponents.date!
            goalComponents.month = 11
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            
        case Zoo.sagittarius.rawValue: // November 23 - December 22
            goalComponents.month = 11
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 12
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            
        case Zoo.capricorn.rawValue: // December 23 - January 20
            goalComponents.month = 12
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 1
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            
        case Zoo.aquarius.rawValue: // January 21 - February 19
            goalComponents.month = 1
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 2
            goalComponents.day = 19
            goalEnd = goalComponents.date!
            
        case Zoo.pisces.rawValue: // February 20 - March 20
            goalComponents.month = 2
            goalComponents.day = 20
            goalStart = goalComponents.date!
            goalComponents.month = 3
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            
        default: return
            
        }
        
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
        return 81
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return "\(row + 2019)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        updateView()
    }
}

