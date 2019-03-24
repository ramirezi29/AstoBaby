//
//  ButtonController.swift
//  AstroBaby
//
//  Created by Ivan Ramirez on 2/17/19.
//  Copyright © 2019 ramcomw. All rights reserved.
//

import UIKit

class IRButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        setTitleColor(MyColor.offWhite.value, for: .normal)
        backgroundColor = .blue
        titleLabel?.font = .boldSystemFont(ofSize: 25)
        layer.cornerRadius = frame.size.height / 2
    }
}
