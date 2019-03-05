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
    
    var selectedParentCell: SelectedParentCVCell?
    
    // MARK: - Constants and Vars

    var parentOne: Int? {
        didSet {
            topCollectionView.reloadData()
        }
    }
    var parentTwo: Int?
    let zodiacSelectionCell = "zodiacCell"
    let selectedZodiacCell = "selectedParentZodiacCell"
    
    
    // McteARK: - Life Cyles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Collection View
        
        self.buttomCollectionView.delegate = self
        self.buttomCollectionView.dataSource = self
        
        self.topCollectionView.delegate = self
        self.topCollectionView.dataSource = self
        
        //Review
        
//        //tst
//        self.topCollectionView.reloadData()
        
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
        
        switch collectionView {
        case topCollectionView:
            return 2
        case buttomCollectionView:
            return ZodiacController.zodiacs.count
            
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case topCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: selectedZodiacCell, for: indexPath) as? SelectedParentCVCell else {
                return UICollectionViewCell()
            }
            
            switch indexPath.row {
                // NOTE: - Parent One
            case 0:
                if let parentOne = self.parentOne {
                   cell.selectedZodiac = ZodiacController.zodiacs[parentOne]
                }
                 // NOTE: - Parent Two
            case 1:
                if let parentTwo = self.parentTwo {
                    cell.selectedZodiac = ZodiacController.zodiacs[parentTwo]
                }
            default: return cell
            }
            
            return cell
            
        case buttomCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: zodiacSelectionCell, for: indexPath) as? ParentSelectionVCell else { return UICollectionViewCell()
            }
            
            let zodiacs = ZodiacController.zodiacs[indexPath.row]
            
            cell.zodiac = zodiacs
            return cell
            
            
        default:
            let cell = UICollectionViewCell()
            return cell
        }
    }
        
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.contentView.alpha = 0.5
            
            // NOTE: - Getting the info from the selected cell
            if let collectionView = self.buttomCollectionView,
                let indexPath = collectionView.indexPathsForSelectedItems?.first,
                let celly = collectionView.cellForItem(at: indexPath) as? ParentSelectionVCell,
                let data = celly.zodiacNameLabel.text {
                
               let selectedImage = ZodiacController.transferZodiact(zodiactName: data)
                
                print("🧐 \(selectedImage)")
                print(data)
                
                // NOTE: -  Need to account the user changing their mind or selected a new index, have that populate
                
                //
              
//                if parentOne == nil {
                    parentOne = indexPath.row
//                } else if parentTwo == nil {
                    parentTwo = indexPath.row
//                }
                
                print(parentOne?.description ?? "Parent One has no String ")
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

