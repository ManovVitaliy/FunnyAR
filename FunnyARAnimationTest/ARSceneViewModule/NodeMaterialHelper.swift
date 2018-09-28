//
//  NodeMaterialHelper.swift
//  FunnyARAnimationTest
//
//  Created by user on 9/28/18.
//  Copyright © 2018 Vitaliy Manov. All rights reserved.
//

import UIKit
import ARKit

class NodeMaterialHelper {
    func setupCardToMaterial(material: SCNMaterial, objectName: String) {
        material.lightingModel = SCNMaterial.LightingModel.physicallyBased
        material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_D.png")
        material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_R.png")
        material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_M.png")
        material.normal.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_N_DX.png")
        material.ambientOcclusion.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_AO.png")
        material.emission.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_E.png")
        material.emission.intensity = 8.0
    }
}
