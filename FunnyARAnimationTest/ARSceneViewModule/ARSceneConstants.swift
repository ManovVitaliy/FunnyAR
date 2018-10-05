//
//  ARSceneConstants.swift
//  FunnyARAnimationTest
//
//  Created by user on 9/28/18.
//  Copyright © 2018 Vitaliy Manov. All rights reserved.
//

import UIKit
import ARKit

struct ARSceneConstants {
    //light constants
    let lightEnvIntencity: CGFloat = 0.7
    let envImageName = "spherical"
    let lightIntencity: CGFloat = 100
    let lightPosition = SCNVector3(0, 1, -6)
    
    //background image name constants
    let backgroundImageName = "backgroundSpace"
    
    //scale for all nodes
    let scale = SCNVector3(0.01, 0.01, 0.01)
    
    //projectLifeCycleNode
    let projectLifeCycleNodePosition = SCNVector3(0.3, -2, -10)
    
    //allNodes
    let nodePosition = SCNVector3(-0.8, -2, -10)
    
    //allienNode
    let allienNodePosition = SCNVector3(0, -2, -8)
}
