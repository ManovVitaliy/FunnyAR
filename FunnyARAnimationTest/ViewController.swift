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
    case allien
    case newAllien
    case allienNew
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
    
    var description : String {
        switch self {
        case .earth:
            return "Earth"
        case .fire:
            return "Fire"
        case .project_life_cycle:
            return "Project_life_cycle"
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
        }
    }
    
    func getArray() -> [ObjectName] {
        return [ObjectName.earth,
                ObjectName.fire,
                ObjectName.project_life_cycle,
                ObjectName.rocket,
                ObjectName.sky,
                ObjectName.smoke,
                ObjectName.text,
                ObjectName.yupiter,]
    }
}

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!

    //constants
    let lightEnvIntencity: CGFloat = 5.0
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
        
        // Create a new scene
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
        case .allien:
            customScene = SCNScene(named: "art.scnassets/Allien/1.DAE")!
            allienAnimation(customScene: customScene)
        case .newAllien:
            customScene = SCNScene(named: "art.scnassets/Allien/Test_animation_Allien.DAE")!
            allienAnimation(customScene: customScene)
        case .allienNew:
            customScene = SCNScene(named: "art.scnassets/AllienNew/All_1.DAE")!
            customScene3 = SCNScene(named: "art.scnassets/Allien/1.DAE")!
            allienAnimation(customScene: customScene)
            allienAnimationNew(customScene: customScene3)
        case .testGeometry:
            //earth
            customScene = SCNScene(named: "art.scnassets/TestGeometry/Earth_all.scn")!
            earthAnimation(customScene: customScene)
            //project life cycle
            customScene2 = SCNScene(named: "art.scnassets/TestGeometry/Project_Life_Cycle.DAE")!
            projectLifeCycleAnimation(customScene: customScene2)
            //rocket and nlo
            customScene3 = SCNScene(named: "art.scnassets/TestGeometry/Rocket/Rocket_6.scn")!
            rocketNewAnimation(customScene: customScene3)
            customScene4 = SCNScene(named: "art.scnassets/TestGeometry/Rocket/Rocket_8.scn")!
            rocketNewAnimation(customScene: customScene4)
            customScene5 = SCNScene(named: "art.scnassets/TestGeometry/Rocket/Rocket_NLO.DAE")!
            rocketNewAnimation(customScene: customScene5)
            //text
            customScene6 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_1.scn")!
            textAnimation(customScene: customScene6)
            customScene7 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_2.scn")!
            textAnimation(customScene: customScene7)
            customScene8 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_3.scn")!
            textAnimation(customScene: customScene8)
            customScene9 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_4.scn")!
            textAnimation(customScene: customScene9)
            customScene10 = SCNScene(named: "art.scnassets/TestGeometry/Text/Text_5.scn")!
            textAnimation(customScene: customScene10)
            //yupiter
            customScene11 = SCNScene(named: "art.scnassets/TestGeometry/Yupiter/yupiter.scn")!
            yupiterAnimation(customScene: customScene11)
            //Smoke
            customScene12 = SCNScene(named: "art.scnassets/TestGeometry/SmokeNew/SmokeNew.scn")!
            smokeAnimationNew(customScene: customScene12)
            customScene13 = SCNScene(named: "art.scnassets/TestGeometry/SmokeNew/SmokeNew_2.scn")!
            smokeAnimationNew(customScene: customScene13)
            //fire
            customScene14 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_1.scn")!
            fireAnimation(customScene: customScene14)
            customScene15 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_2.scn")!
            fireAnimation(customScene: customScene15)
            customScene16 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_3.scn")!
            fireAnimation(customScene: customScene16)
            customScene17 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_4.scn")!
            fireAnimation(customScene: customScene17)
            customScene18 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_5.scn")!
            fireAnimation(customScene: customScene18)
            customScene19 = SCNScene(named: "art.scnassets/TestGeometry/Fire/Fire_6.scn")!
            fireAnimation(customScene: customScene19)
            //sky
            customScene20 = SCNScene(named: "art.scnassets/TestGeometry/Sky/Sky_1.scn")!
            skyAnimation(customScene: customScene20)
            customScene21 = SCNScene(named: "art.scnassets/TestGeometry/Sky/Sky_2.scn")!
            skyAnimation(customScene: customScene21)
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
        lightNode.light = light
        lightNode.position = SCNVector3(-2, -1, -7)
        
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
    
    private func allienAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            if let material = child.geometry?.firstMaterial {

                material.lightingModel = SCNMaterial.LightingModel.physicallyBased

                material.diffuse.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LPt_D.tga")
                material.roughness.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LPt_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LPt_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LP_N_DX.png")
                material.emission.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LP_E.png")
                material.ambientOcclusion.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LP_O.png")
            }
            node.addChildNode(child)
        }
        
        let envImage = UIImage(named: envImageName)
        sceneView.scene.lightingEnvironment.contents = envImage
        sceneView.scene.lightingEnvironment.intensity = lightEnvIntencity
        
        // Set up some properties
        node.position = SCNVector3(0, -1, -5)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func allienAnimationNew(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                
                material.diffuse.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LPt_D.tga")
                material.roughness.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LPt_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LPt_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LP_N_DX.png")
                material.emission.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LP_E.png")
                material.ambientOcclusion.contents = UIImage(named: "art.scnassets/Allien/MAP/T_LP_O.png")
            }
            
            if let name = child.name {
                if name != "Object005" {
                    node.addChildNode(child)
                }
            }
        }
        
        let envImage = UIImage(named: envImageName)
        sceneView.scene.lightingEnvironment.contents = envImage
        sceneView.scene.lightingEnvironment.intensity = lightEnvIntencity
        
        // Set up some properties
        node.position = SCNVector3(0, -1, -5)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func earthAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Map_Earth/T_Earth_D.png")
                material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/Map_Earth/T_Earth_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/Map_Earth/T_Earth_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/TestGeometry/Map_Earth/T_Earth_N_DX.png")
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func projectLifeCycleAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Project_Life_Cycle/Map_Project_Life_Cycle/T_Projekt_Life_Cyclet_D.png")
                material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/Project_Life_Cycle/Map_Project_Life_Cycle/T_Projekt_Life_Cyclet_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/Project_Life_Cycle/Map_Project_Life_Cycle/T_Projekt_Life_Cycle_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/TestGeometry/Project_Life_Cycle/Map_Project_Life_Cycle/T_Projekt_Life_Cycle_N_DX.png")
                material.ambientOcclusion.contents = UIImage(named: "art.scnassets/TestGeometry/Project_Life_Cycle/Map_Project_Life_Cycle/T_Projekt_Life_Cycle_AO.png")
                material.emission.contents = UIImage(named: "art.scnassets/TestGeometry/Project_Life_Cycle/Map_Project_Life_Cycle/T_Projekt_Life_Cycle_E.png")
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func rocketNewAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Rocket/Map_Rocket/T_Rocket_D.png")
                material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/Rocket/Map_Rocket/T_Rocket_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/Rocket/Map_Rocket/T_Rocket_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/TestGeometry/Rocket/Map_Rocket/T_Rocket_DX.png")
                material.emission.contents = UIImage(named: "art.scnassets/TestGeometry/Rocket/Map_Rocket/T_Rocket_E.png")
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func textAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Text/Map_Text/T_Text_D.png")
                material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/Text/Map_Text/T_Text_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/Text/Map_Text/T_Text_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/TestGeometry/Text/Map_Text/T_Text_N_DX.png")
                material.ambientOcclusion.contents = UIImage(named: "art.scnassets/TestGeometry/Text/Map_Text/T_Text_AO.png")
                material.emission.contents = UIImage(named: "art.scnassets/TestGeometry/Text/Map_Text/T_Text_E.png")
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func yupiterAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Yupiter/Map_Yupiter/T_Yupiter_D.png")
                material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/Yupiter/Map_Yupiter/T_Yupiter_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/Yupiter/Map_Yupiter/T_Yupiter_M.png")
                material.normal.contents = UIImage(named: "art.scnassets/TestGeometry/Yupiter/Map_Yupiter/T_Yupiter_N_DX.png")
                material.emission.contents = UIImage(named: "art.scnassets/TestGeometry/Yupiter/Map_Yupiter/T_Yupiter_E.png")
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func smokeAnimationNew(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        let smokeCard = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 0.1)
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.transparent.contents = smokeCard
                material.transparent.intensity = 0.2
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func fireAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                material.diffuse.contents = UIImage(named: "art.scnassets/TestGeometry/Fire/Map_Fire/T_Fire_D.png")
                material.roughness.contents = UIImage(named: "art.scnassets/TestGeometry/Fire/Map_Fire/T_Fire_R.png")
                material.metalness.contents = UIImage(named: "art.scnassets/TestGeometry/Fire/Map_Fire/T_Fire_M.png")
                material.emission.contents = UIImage(named: "art.scnassets/TestGeometry/Fire/Map_Fire/T_Fire_E(Emissive).png")
            }
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
            }
            node.addChildNode(child)
        }
        addNodeToSceneView(node: node)
    }
    
    private func addNodeToSceneView(node: SCNNode) {
        // Set up some properties
        node.position = SCNVector3(0, -1, -10)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        node.pivot = SCNMatrix4Rotate(node.pivot, 3 * .pi / 2, 0, 1, 0)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)

    }
}
