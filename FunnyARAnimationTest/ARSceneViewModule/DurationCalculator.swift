//
//  DurationCalculator.swift
//  FunnyARAnimationTest
//
//  Created by user on 10/5/18.
//  Copyright © 2018 Vitaliy Manov. All rights reserved.
//

import UIKit
import ARKit

class DurationCalculator {
    func getMaxDurationValue(node: SCNNode) -> Double? {
        let maxDuration: Double?
        var durationsArray = [Double]()
        for child in node.childNodes {
            for animationKey in child.animationKeys {
                if let duration = child.animationPlayer(forKey: animationKey)?.animation.duration {
                    durationsArray.append(Double(duration))
                }
            }
        }
        maxDuration = durationsArray.max()
        
        return maxDuration
    }
}
