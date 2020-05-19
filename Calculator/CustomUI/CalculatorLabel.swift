//
//  CalculatorLabel.swift
//  Calculator
//
//  Created by Pete Parks on 5/18/20.
//

import UIKit

class CalculatorLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.updateFontTo(fontName: FontName.digit1)
    }
    
    func updateFontTo(fontName: String) {
        //guard let size = self.font?.pointSize else { return }
        self.font = UIFont(name: fontName, size: 64)
        self.textColor = .textGreen
    }
}
