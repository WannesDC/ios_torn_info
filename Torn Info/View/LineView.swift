//
//  LineView.swift
//  Torn Info
//
//  Created by Wannes De Craene on 25/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import UIKit

class LineView: UIView {

    public override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(1.0)
        context!.setStrokeColor(UIColor.gray.cgColor)
        context?.move(to: CGPoint(x: 0, y: self.frame.size.height))
        context?.addLine(to: CGPoint(x: self.frame.size.width, y: 0))
        context!.strokePath()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
