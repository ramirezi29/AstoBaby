//
//  ParentSelectionVC.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 2/16/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class ParentSelectionVC: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var analyzeButton: IRButton!
    @IBOutlet weak var buttomCollectionView: UICollectionView!
    @IBOutlet weak var topCollectionView: UICollectionView!
    
    
    // MARK: - Constants and Vars
    
    let zodiacSelectionCell = "zodiacCell"
    let selectedZodiacCell = "selectedParentZodiacCell"
    var zodiacArray = ["aquarius", "aries", "cancer", "capricorn", "gemini", "leo", "libra", "pisces", "sagittarius", "scorpio", "taurus", "virgo"]
    
    // MARK: - Life Cyles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Collection View

        self.buttomCollectionView.delegate = self
        self.buttomCollectionView.dataSource = self
        
        self.topCollectionView.delegate = self
        self.topCollectionView.delegate = self
        
        //Review
        
        self.buttomCollectionView.allowsMultipleSelection = false
        self.buttomCollectionView.selectItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, animated: false, scrollPosition: [])
        
        self.topCollectionView.allowsMultipleSelection = false
        self.topCollectionView.selectItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, animated: false, scrollPosition: [])
    }
    
    // MARK: - Actions
    
    @IBAction func analyzeButtonTapped(_ sender: IRButton) {
        //compare the two selected zodiac signs
    }
    
}

extension ParentSelectionVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return zodiacArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: zodiacSelectionCell, for: indexPath) as? ParentSelectionVCell else { return UICollectionViewCell()
        }

        var pictures: [UIImage] = []
        
        pictures.append(UIImage(named: "aquarius")!)
        pictures.append(UIImage(named: "aries")!)
        pictures.append(UIImage(named: "cancer")!)
        pictures.append(UIImage(named: "capricorn")!)
        pictures.append(UIImage(named: "gemini")!)
        pictures.append(UIImage(named: "leo")!)
        pictures.append(UIImage(named: "libra")!)
        pictures.append(UIImage(named: "pisces")!)
        pictures.append(UIImage(named: "sagittarius")!)
        pictures.append(UIImage(named: "scorpio")!)
        pictures.append(UIImage(named: "taurus")!)
        pictures.append(UIImage(named: "virgo")!)
        
        cell.zodiacImageView.image = pictures[indexPath.row]
        cell.zodiacNameLabel.text = zodiacArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.contentView.alpha = 0.5
        
        // NOTE: - Getting the info from the selected cell
        if let collectionView = self.buttomCollectionView,
            let indexPath = collectionView.indexPathsForSelectedItems?.first,
            let celly = collectionView.cellForItem(at: indexPath) as? ParentSelectionVCell,
            let data = celly.zodiacNameLabel.text {
            print(data)
        }
    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.contentView.alpha = 1.0
    }
}







    // Set the selected cell to the parent SelectedParentCVCell
//if let collectionView = self.collectionView,
//    let identifiedParentCell = collectionView.indexPathsForVisibleItems.first,
//    let identifiedParentCellToPopulate = collectionView.cellForItem(at: identifiedParentCell) as? SelectedParentCVCell,
//    let dataToTransfer = identifiedParentCellToPopulate.seletedParentZodiacLabel.text {
//    print(dataToTransfer)
//

