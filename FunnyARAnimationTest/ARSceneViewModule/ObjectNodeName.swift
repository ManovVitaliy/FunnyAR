//
//  ObjectNodeName.swift
//  FunnyARAnimationTest
//
//  Created by user on 9/28/18.
//  Copyright © 2018 Vitaliy Manov. All rights reserved.
//

import Foundation


enum ObjectName: String {
    case earth
    case fire
    case project_life_cycle
    case rocket
    case sky
    case smoke
    case text
    case yupiter
    case allien
    
    var description : String {
        switch self {
        case .earth:
            return "Earth"
        case .fire:
            return "Fire"
        case .project_life_cycle:
            return "Project_Life_Cycle"
        case .rocket:
            return "Rocket"
        case .sky:
            return "Sky"
        case .smoke:
            return "Smoke"
        case .text:
            return "Text"
        case .yupiter:
            return "Yupiter"
        case .allien:
            return "Allien"
        }
    }
}
