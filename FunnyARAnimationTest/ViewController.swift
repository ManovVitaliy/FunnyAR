//
//  ViewController.swift
//  FunnyARAnimationTest
//
//  Created by user on 9/14/18.
//  Copyright © 2018 Vitaliy Manov. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

enum AnimationType {
    case twistForAnnaOne
    case twistForAnnaTwo
    case testGeometry
}

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
            return "sky"
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

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!

    //constants
    let lightEnvIntencity: CGFloat = 0.7
    let envImageName = "spherical"
    
    private var animationType: AnimationType = .testGeometry
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        let scene = SCNScene()
        
        // Set the scene to the view
        sceneView.scene = scene
        
        // Set background image
        let backgroundImage = UIImage(named: "backgroundSpace")
        sceneView.scene.background.contents = backgroundImage
        
        // Create a new scenes
        var customScene = SCNScene()
        var customScene2 = SCNScene()
        var customScene3 = SCNScene()
        var customScene4 = SCNScene()
        var customScene5 = SCNScene()
        var customScene6 = SCNScene()
        var customScene7 = SCNScene()
        var customScene8 = SCNScene()
        var customScene9 = SCNScene()
        var customScene10 = SCNScene()
        var customScene11 = SCNScene()
        var customScene12 = SCNScene()
        var customScene13 = SCNScene()
        var customScene14 = SCNScene()
        var customScene15 = SCNScene()
        var customScene16 = SCNScene()
        var customScene17 = SCNScene()
        var customScene18 = SCNScene()
        var customScene19 = SCNScene()
        var customScene20 = SCNScene()
        var customScene21 = SCNScene()
        var customScene22 = SCNScene()

        switch animationType {
        case .twistForAnnaOne:
            customScene = SCNScene(named: "art.scnassets/Twist/twist_danceFixed")!
            customScene2 = SCNScene(named: "art.scnassets/Twist/twist_danceFixed")!
            customScene3 = SCNScene(named: "art.scnassets/Twist/twist_danceFixed")!
            customScene4 = SCNScene(named: "art.scnassets/Twist/twist_danceFixed")!
            addNodeTwistForAnnaOne(customScene: customScene)
            addNodeTwistForAnnaTwo(customScene: customScene2)
            addNodeTwistForAnnaThree(customScene: customScene3)
            addNodeTwistForAnnaFour(customScene: customScene4)
        case .twistForAnnaTwo:
            customScene = SCNScene(named: "art.scnassets/Twist/twist_danceFixed")!
            addNodeTwistForAnnaTwo(customScene: customScene)
        case .testGeometry:
            //earth
            customScene = SCNScene(named: "art.scnassets/TestGeometry/Earth/Earth_fixed.scn")!
            universalAnimation(customScene: customScene, objectName: .earth)
            //project life cycle
            customScene2 = SCNScene(named: "art.scnassets/TestGeometry/Project_Life_Cycle/Project_Life_Cycle.DAE")!
            universalAnimation(customScene: customScene2, objectName: .project_life_cycle)
            //rocket and nlo
            customScene3 = SCNScene(named: "art.scnassets/TestGeometry/Rocket/Rocket_9.scn")!
            universalAnimation(customScene: customScene3, objectName: .rocket)
            customScene4 = SCNScene(named: "art.scnassets/TestGeometry/Rocket/Rocket_8.scn")!
            universalAnimation(customScene: customScene4, objectName: .rocket)
            customScene5 = SCNScene(named: "art.scnassets/TestGeometry/Rocket/Rocket_NLO_new.scn")!
            universalAnimation(customScene: customScene5, objectName: .rocket)
            //text
            customScene6 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_1.scn")!
            universalAnimation(customScene: customScene6, objectName: .text)
            customScene7 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_2.scn")!
            universalAnimation(customScene: customScene7, objectName: .text)
            customScene8 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_3.scn")!
            universalAnimation(customScene: customScene8, objectName: .text)
            customScene9 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_4.scn")!
            universalAnimation(customScene: customScene9, objectName: .text)
            customScene10 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_5.scn")!
            universalAnimation(customScene: customScene10, objectName: .text)
            //yupiter
            customScene11 = SCNScene(named: "art.scnassets/TestGeometry/Yupiter/yupiter.scn")!
            universalAnimation(customScene: customScene11, objectName: .yupiter)
            //Smoke
            customScene12 = SCNScene(named: "art.scnassets/TestGeometry/SmokeNew/SmokeNew.scn")!
            smokeAnimationNew(customScene: customScene12)
            customScene13 = SCNScene(named: "art.scnassets/TestGeometry/SmokeNew/Smoke_3.scn")!
            smokeAnimationNew(customScene: customScene13)
            //fire
            customScene14 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_1.scn")!
            universalAnimation(customScene: customScene14, objectName: .fire)
            customScene15 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_2.scn")!
            universalAnimation(customScene: customScene15, objectName: .fire)
            customScene16 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_3.scn")!
            universalAnimation(customScene: customScene16, objectName: .fire)
            customScene17 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_4.scn")!
            universalAnimation(customScene: customScene17, objectName: .fire)
            customScene18 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_5.scn")!
            universalAnimation(customScene: customScene18, objectName: .fire)
            customScene19 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_6.scn")!
            universalAnimation(customScene: customScene19, objectName: .fire)
            //sky
//            customScene20 = SCNScene(named: "art.scnassets/TestGeometry/Sky/Sky_1.scn")!
//            skyAnimation(customScene: customScene20)
//            customScene21 = SCNScene(named: "art.scnassets/TestGeometry/Sky/Sky_3.scn")!
//            skyAnimation(customScene: customScene21)
            //allien
            customScene22 = SCNScene(named: "art.scnassets/TestGeometry/Allien/Allien.scn")!
            universalAnimation(customScene: customScene22, objectName: .allien)
        }
        addLightToRootScene()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
    //helper functions
    private func addLightToRootScene() {
        let envImage = UIImage(named: envImageName)
        sceneView.scene.lightingEnvironment.contents = envImage
        sceneView.scene.lightingEnvironment.intensity = lightEnvIntencity
        
        let light = SCNLight()
        let lightNode = SCNNode()
        light.intensity = 100.0
        lightNode.light = light
        lightNode.position = SCNVector3(0, 1, -6)
        
        sceneView.scene.rootNode.addChildNode(lightNode)
    }
    
    private func addNodeTwistForAnnaOne(customScene: SCNScene){
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            node.addChildNode(child)
        }
        
        // Set up some properties
        node.position = SCNVector3(0, -1, -2)
        node.scale = SCNVector3(0.2, 0.2, 0.2)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeTwistForAnnaTwo(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            node.addChildNode(child)
        }
        
        // Set up some properties
        node.position = SCNVector3(2, -1, -2)
        node.scale = SCNVector3(0.2, 0.2, 0.2)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeTwistForAnnaThree(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            node.addChildNode(child)
        }
        
        // Set up some properties
        node.position = SCNVector3(1, -1, -2)
        node.scale = SCNVector3(0.2, 0.2, 0.2)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeTwistForAnnaFour(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            node.addChildNode(child)
        }
        
        // Set up some properties
        node.position = SCNVector3(-1, -1, -2)
        node.scale = SCNVector3(0.2, 0.2, 0.2)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func smokeAnimationNew(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func skyAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Sky/T_Sky_D.jpg")
                material.transparency = 0.8
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }

    private func universalAnimation(customScene: SCNScene, objectName: ObjectName) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_D.png")
                material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_N_DX.png")
                material.ambientOcclusion.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_AO.png")
                material.emission.contents = UIImage(named: "art.scnassets/TestGeometry/\(objectName.description)/Map_\(objectName.description)/T_\(objectName.description)_E.png")
                material.emission.intensity = 8.0
            }
            node.addChildNode(child)
        }
        
        switch objectName {
        case .project_life_cycle:
            addNodeProjectLifeCycleToSceneView(node: node)
        case .allien:
            addNodeAllienToSceneView(node: node)
        case .earth, .fire, .rocket, .text, .yupiter:
            addNodeToSceneView(node: node)
        default:
            break
        }
    }
    
    //MARK: - add nodes to ARSceneView's root node
    private func addNodeProjectLifeCycleToSceneView(node: SCNNode) {
        // Set up some properties
        node.position = SCNVector3(0.3, -2, -10)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        node.pivot = SCNMatrix4Rotate(node.pivot, 3 * .pi / 2, 0, 1, 0)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeToSceneView(node: SCNNode) {
        // Set up some properties
        node.position = SCNVector3(-0.8, -2, -10)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        node.pivot = SCNMatrix4Rotate(node.pivot, 3 * .pi / 2, 0, 1, 0)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeAllienToSceneView(node: SCNNode) {
        // Set up some properties
        node.position = SCNVector3(0, -2, -8)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        node.pivot = SCNMatrix4Rotate(node.pivot, 3 * .pi / 2, 0, 1, 0)
        node.pivot = SCNMatrix4Rotate(node.pivot, .pi / 8, 1, 0, 0)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
}
