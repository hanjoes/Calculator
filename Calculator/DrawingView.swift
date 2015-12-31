//
//  DrawingView.swift
//  Calculator
//
//  Created by Hanzhou Shi on 12/31/15.
//  Copyright © 2015 USF. All rights reserved.
//

import UIKit

class DrawingView: UIView {
    
    private struct Constants {
        static let PointsPerUnit = CGFloat(20)
    }
    
    var axesCenter: CGPoint {
        return convertPoint(center, fromView: superview)
    }

    override func drawRect(rect: CGRect) {
        let drawer = AxesDrawer()
        drawer.drawAxesInRect(bounds, origin: axesCenter, pointsPerUnit: Constants.PointsPerUnit)
    }

}