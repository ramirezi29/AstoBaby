//
//  ParentSelectionVCell.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 2/16/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class ParentSelectionVCell: UICollectionViewCell {
    
    
    @IBOutlet weak var zodiacNameLabel: UILabel!
    @IBOutlet weak var zodiacImageView: UIImageView!
    
    
    var zodiac: Zodiac? {
        didSet {
            updateViews(zodiacResults: zodiac)
        }
    }
    
//    var zodiacImage: UIImage? {
//        didSet {
//            updateViews(zodiacImage: zodiacImage)
//        }
//    }
//
    

    func updateViews(zodiacResults: Zodiac? = nil) {
        
        DispatchQueue.main.async {
            if let zodiacResults = zodiacResults {
                self.zodiacNameLabel.text = zodiacResults.zodiacName
            
                self.zodiacImageView.image = UIImage(named: (zodiacResults.zodiactImageName?.lowercased())!)
            }
        }
        
//    guard let zodiac = zodiac else { return }
//
//        zodiacNameLabel.text = zodiac.zodiacName
//        zodiacImageView.image = UIImage(named: zodiac.zodiactImageName!)
        
    }
//    override var isSelected: Bool {
//        didSet{
//            if self.isSelected {
//                self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
//                self.contentView.alpha = 0.3
//                print("🐶 This cell was selected \(self.zodiacImageView.debugDescription)")
//            } else {
//                self.transform = CGAffineTransform.identity
//                self.contentView.alpha = 1.0
//            }
//        }
//    }
}



