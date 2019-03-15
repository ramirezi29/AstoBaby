//
//  AnalyzedVC.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 3/9/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class AnalyzedVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    // MARK: - Constants and Variables
    var parentOne: Int?
    var parentTwo: Int?
    @IBOutlet weak var chosenZodiacLabel: UILabel!
    @IBOutlet weak var yearPicker: UIPickerView!
    @IBOutlet weak var outputLabel: UILabel!
    
    
    // MARK: - Life Cyles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        yearPicker.delegate = self
        yearPicker.dataSource = self
        print("parent 1: \(String(describing: parentOne) )\nparent 2:\(String(describing: parentTwo))")
    }
    
    @IBAction func zodiacButtonTapped(_ sender: UIButton) {
        
        var goalComponents = DateComponents()
        goalComponents.year = yearPicker.selectedRow(inComponent: 0) + 2019
        goalComponents.calendar = Calendar.current
        var goalStart = Date()
        var goalEnd = Date()
        var conceptionStart = Date()
        var conceptionMiddle = Date()
        var conceptionEnd = Date()
        var desiredZodiac = ""
        
         switch sender.image(for: .normal) {
            
        case UIImage(named: "aries"): // March 21 - April 20
            goalComponents.month = 3
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 4
            goalComponents.day = 20
            goalEnd = goalComponents.date!
             var desiredZodiac = "aries"
            
            
         case UIImage(named: "taurus"): // April 21 - May 21
            goalComponents.month = 4
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 5
            goalComponents.day = 21
            goalEnd = goalComponents.date!
             var desiredZodiac = "taurus"
            
        case UIImage(named: "gemini"): // May 22 - June 21
            goalComponents.month = 5
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 6
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            desiredZodiac = "Gemini"
            
        case UIImage(named: "cancer"): // June 22 - July 22
            goalComponents.month = 6
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 7
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            desiredZodiac = "Cancer"
            
        case UIImage(named: "leo"): // July 23 - August 21
            goalComponents.month = 7
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 8
            goalComponents.day = 21
            goalEnd = goalComponents.date!
            desiredZodiac = "Leo"
            
        case UIImage(named: "virgo"): // August 22 - September 23
            goalComponents.month = 8
            goalComponents.day = 22
            goalStart = goalComponents.date!
            goalComponents.month = 9
            goalComponents.day = 23
            goalEnd = goalComponents.date!
            desiredZodiac = "Virgo"
            
        case UIImage(named: "libra"): // September 24 - October 23
            goalComponents.month = 9
            goalComponents.day = 24
            goalStart = goalComponents.date!
            goalComponents.month = 10
            goalComponents.day = 23
            goalEnd = goalComponents.date!
            desiredZodiac = "Libra"
            
        case UIImage(named: "scorpio"): // October 24 - November 22
            goalComponents.month = 10
            goalComponents.day = 24
            goalStart = goalComponents.date!
            goalComponents.month = 11
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            desiredZodiac = "Scorpio"
            
        case UIImage(named: "sagittarius"): // November 23 - December 22
            goalComponents.month = 11
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 12
            goalComponents.day = 22
            goalEnd = goalComponents.date!
            desiredZodiac = "Sagittarius"
            
        case UIImage(named: "capricorn"): // December 23 - January 20
            goalComponents.month = 12
            goalComponents.day = 23
            goalStart = goalComponents.date!
            goalComponents.month = 1
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            desiredZodiac = "Capricorn"
            
        case UIImage(named: "aquarius"): // January 21 - February 19
            goalComponents.month = 1
            goalComponents.day = 21
            goalStart = goalComponents.date!
            goalComponents.month = 2
            goalComponents.day = 19
            goalEnd = goalComponents.date!
            desiredZodiac = "Aquarius"
            
        case UIImage(named: "pisces"): // February 20 - March 20
            goalComponents.month = 2
            goalComponents.day = 20
            goalStart = goalComponents.date!
            goalComponents.month = 3
            goalComponents.day = 20
            goalEnd = goalComponents.date!
            desiredZodiac = "Pisces"
        default: return
        }
        
        conceptionStart = goalStart.subtract38Weeks
        conceptionMiddle = conceptionStart.add15Days
        conceptionEnd = goalEnd.subtract38Weeks
        
        outputLabel.text = "\(desiredZodiac) babies are born between \(goalStart.mmmmd) and \(goalEnd.mmmmd).\nThe suggested conception window for a \(yearPicker.selectedRow(inComponent: 0) + 2019) \(desiredZodiac) baby is between \(conceptionStart.mMdDyY) and \(conceptionEnd.mMdDyY).\nThe optimal conception date is \(conceptionMiddle.mMdDyY)."
    }
    
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
