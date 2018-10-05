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
    case testGeometry
}

class ViewController: UIViewController, ARSCNViewDelegate {

    //MARK: - outlets
    @IBOutlet var sceneView: ARSCNView!
    
    //MARK: - properties
    private var animationType: AnimationType = .testGeometry
    private var sceneConstants = ARSceneConstants()
    private let nodeMaterialHelper = NodeMaterialHelper()
    
    //MARK: - view controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        addNodesToRootScene()
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
    
    //MARK: - ARSceneView delegte's methods
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
    //MARK: - setup scene and scene's settings
    private func setupScene() {
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        let scene = SCNScene()
        
        // Set the scene to the view
        sceneView.scene = scene
        
        // Set background image
        let backgroundImage = UIImage(named: sceneConstants.backgroundImageName)
        sceneView.scene.background.contents = backgroundImage
    }
    
    private func addNodesToRootScene() {
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
    }
    
    //add light to scene
    private func addLightToRootScene() {
        let envImage = UIImage(named: sceneConstants.envImageName)
        sceneView.scene.lightingEnvironment.contents = envImage
        sceneView.scene.lightingEnvironment.intensity = sceneConstants.lightEnvIntencity
        
        let light = SCNLight()
        let lightNode = SCNNode()
        light.intensity = sceneConstants.lightIntencity
        lightNode.light = light
        lightNode.position = sceneConstants.lightPosition
        
        sceneView.scene.rootNode.addChildNode(lightNode)
    }
    
    private func smokeAnimationNew(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        let maxDuration: Double?
        var durationsArray = [Double]()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            node.addChildNode(child)
            
            for animationKey in child.animationKeys {
                if let duration = child.animationPlayer(forKey: animationKey)?.animation.duration {
                    durationsArray.append(Double(duration))
                }
            }
        }
        maxDuration = durationsArray.max()
        
        addNodeToSceneView(node: node)
        
        defer {
            if let maxDur = maxDuration {
                stopNode(node: node, maxDuration: maxDur)
            }
        }
    }
    
    private func skyAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        let maxDuration: Double?
        var durationsArray = [Double]()
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            if let material = child.geometry?.firstMaterial {
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Sky/T_Sky_D.jpg")
                material.transparency = 0.8
            }
            node.addChildNode(child)
            
            for animationKey in child.animationKeys {
                if let duration = child.animationPlayer(forKey: animationKey)?.animation.duration {
                    durationsArray.append(Double(duration))
                }
            }
        }
        maxDuration = durationsArray.max()
        
        addNodeToSceneView(node: node)
        
        defer {
            if let maxDur = maxDuration {
                stopNode(node: node, maxDuration: maxDur)
            }
        }
    }

    private func universalAnimation(customScene: SCNScene, objectName: ObjectName) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        let maxDuration: Double?
        var durationsArray = [Double]()
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            if let material = child.geometry?.firstMaterial {
                nodeMaterialHelper.setupCardToMaterial(material: material, objectName: objectName.description)
            }
            node.addChildNode(child)
            
            for animationKey in child.animationKeys {
                if let duration = child.animationPlayer(forKey: animationKey)?.animation.duration {
                    durationsArray.append(Double(duration))
                }
            }
        }
        
        maxDuration = durationsArray.max()
        
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
        
        defer {
            if let maxDur = maxDuration {
                stopNode(node: node, maxDuration: maxDur)
            }
        }
        
    }
    
    //MARK: - add nodes to ARSceneView's root node
    private func addNodeProjectLifeCycleToSceneView(node: SCNNode) {
        // Set up some properties
        node.position = sceneConstants.projectLifeCycleNodePosition
        node.scale = sceneConstants.scale
        //need turn from 0 grad to 270 around y' vector
        node.pivot = SCNMatrix4Rotate(node.pivot, 3 * .pi / 2, 0, 1, 0)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeToSceneView(node: SCNNode) {
        // Set up some properties
        node.position = sceneConstants.nodePosition
        node.scale = sceneConstants.scale
        //need turn from 0 grad to 270 around y' vector
        node.pivot = SCNMatrix4Rotate(node.pivot, 3 * .pi / 2, 0, 1, 0)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeAllienToSceneView(node: SCNNode) {
        // Set up some properties
        node.position = sceneConstants.allienNodePosition
        node.scale = sceneConstants.scale
        //need turn from 0 grad to 270 around y' vector
        node.pivot = SCNMatrix4Rotate(node.pivot, 3 * .pi / 2, 0, 1, 0)
        //need turn from 0 grad to 22.5 around x' vector
        node.pivot = SCNMatrix4Rotate(node.pivot, .pi / 8, 1, 0, 0)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func stopNode(node: SCNNode, maxDuration: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + maxDuration - 2.0) { [weak self] in
            if let nodes = self?.sceneView?.scene.rootNode.childNodes {
                for node in nodes {
                    node.isPaused = true
                }
            }
        }
    }
}
