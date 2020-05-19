//
//  DigitButton.swift
//
//  Created by Pete Parks on 5/18/20.
//

import UIKit

class DigitButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        updateFontTo(FontName.digit1)
        
        /*for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }*/
    }
    
    func updateFontTo(_ name: String) {
        //guard let size = self.titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: name, size: 48)
    }
}


class BlueButton: DigitButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .digitBlue
        //updateFontTo(FontName.digit1)
        self.setTitleColor(.textWhite, for: .normal)
    }
}


class OrangeButton: DigitButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .operanOrange
        //updateFontTo(FontName.digit1)
        self.setTitleColor(.textWhite, for: .normal)
    }
}

class GrayButton: DigitButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .operanGray
        //updateFontTo(FontName.digit1)
        self.setTitleColor(.textWhite, for: .normal)
    }
}
