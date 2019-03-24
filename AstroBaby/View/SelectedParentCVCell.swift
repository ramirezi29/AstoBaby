//
//  SelectedParentCVCell.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 2/18/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class SelectedParentCVCell: UICollectionViewCell {
    //selectedParentZodiacCell
    
    @IBOutlet weak var selectedParentImageView: UIImageView!
    @IBOutlet weak var seletedParentZodiacLabel: UILabel!
    
    var selectedZodiac: Zodiac? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let selectedZodiac = selectedZodiac else  {
            return
        }
        DispatchQueue.main.async {
            
            self.seletedParentZodiacLabel.text = selectedZodiac.zodiacName
            
            self.selectedParentImageView.image = UIImage(named: (selectedZodiac.zodiactImageName!))
        }
    }
}
