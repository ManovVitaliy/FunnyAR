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
    case earthAnimation
    case newAnimation
    case allien
    case newtonBalls
    case finalAnimation
}

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    //constants
    let lightEnvIntencity: CGFloat = 5.0
    let envImageName = "spherical"
    
    private var animationType: AnimationType = .finalAnimation
    
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
        case .earthAnimation:
            customScene = SCNScene(named: "art.scnassets/Earth/Anima.DAE")!
            addNodeEarthAnimation(customScene: customScene)
        case .newAnimation:
            customScene = SCNScene(named: "art.scnassets/NewAnimation/Test_Anim_Earth_Rock_Fire.DAE")!
            addNodeEarthAnimationNew(customScene: customScene)
        case .allien:
            customScene = SCNScene(named: "art.scnassets/Allien/1.DAE")!
            allienAnimation(customScene: customScene)
        case .newtonBalls:
            customScene = SCNScene(named: "art.scnassets/NewtonBalls/NewtonBalls_Animation.DAE")!
            addNodeNewtonBalls(customScene: customScene)
        case .finalAnimation:
            customScene = SCNScene(named: "art.scnassets/1/1.scn")!
            self.addNodeFinalAnimation(customScene: customScene)
        default:
            break
        }
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
    
    private func addNodeEarthAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            if let material = child.geometry?.firstMaterial {
                
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                
                material.diffuse.contents = UIImage(named: "art.scnassets/Earth/T_Earth_D_Anim.png")
                material.roughness.contents = UIImage(named: "art.scnassets/Earth/T_Earth_R_Anim.png")
                material.metalness.contents = UIImage(named: "art.scnassets/Earth/T_Earth_M_Anim.png")
                material.normal.contents = UIImage(named: "art.scnassets/Earth/T_Earth_N_DX_Anim.png")
            }
            node.addChildNode(child)
        }
        
        let envImage = UIImage(named: envImageName)
        sceneView.scene.lightingEnvironment.contents = envImage
        sceneView.scene.lightingEnvironment.intensity = lightEnvIntencity
        
        // Set up some properties
        node.position = SCNVector3(0, -1, -2)
        node.scale = SCNVector3(0.02, 0.02, 0.02)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeEarthAnimationNew(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
        
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
            if let material = child.geometry?.firstMaterial {
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                
                guard let nodeName = child.name else {
                    break
                }
                
                if nodeName == "Rocket" {
                    material.diffuse.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_D.png")
                    material.roughness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_R.png")
                    material.metalness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_M.png")
                    material.normal.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_DX.png")
                    material.emission.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_E.png")
                } else if nodeName == "Fire" {
                    material.diffuse.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_D.png")
                    material.roughness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_R.png")
                    material.metalness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_M.png")
                    material.emission.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_E.png")
                } else if nodeName == "earth" {
                    material.diffuse.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_D.png")
                    material.roughness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_R.png")
                    material.metalness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_M.png")
                    material.normal.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_N_DX.png")
                }
            } else {
                let material = SCNMaterial()
                material.lightingModel = SCNMaterial.LightingModel.physicallyBased
                
                guard let nodeName = child.name else {
                    break
                }
                
                if nodeName == "Rocket" {
                    material.diffuse.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_D.png")
                    material.roughness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_R.png")
                    material.metalness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_M.png")
                    material.normal.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_DX.png")
                    material.emission.contents = UIImage(named: "art.scnassets/NewAnimation/Map_ROCKET/T_Rocket_E.png")
                } else if nodeName == "Fire" || nodeName == "Fire_2" {
                    material.diffuse.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_D.png")
                    material.roughness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_R.png")
                    material.metalness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_M.png")
                    material.emission.contents = UIImage(named: "art.scnassets/NewAnimation/Map_fire/T_Fire_E.png")
                } else {
                    material.diffuse.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_D.png")
                    material.roughness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_R.png")
                    material.metalness.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_M.png")
                    material.normal.contents = UIImage(named: "art.scnassets/NewAnimation/Map_Earth/T_Earth_N_DX.png")
                }
                child.geometry?.firstMaterial = material
            }
            node.addChildNode(child)
        }
        
        let envImage = UIImage(named: envImageName)
        sceneView.scene.lightingEnvironment.contents = envImage
        sceneView.scene.lightingEnvironment.intensity = lightEnvIntencity
        
        // Set up some properties
        node.position = SCNVector3(0, -1, -7)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        
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
        node.position = SCNVector3(0, -1, -7)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
        
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    private func addNodeNewtonBalls(customScene: SCNScene) {
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
    
    private func addNodeFinalAnimation(customScene: SCNScene) {
        // This node will be parent of all the animation models
        let node = SCNNode()
    
        // Add all the child nodes to the parent node
        for child in customScene.rootNode.childNodes {
        node.addChildNode(child)
        }
    
        // Set up some properties
        node.position = SCNVector3(1, -1, -15)
        node.scale = SCNVector3(0.01, 0.01, 0.01)
    
        // Add the node to the scene
        sceneView.scene.rootNode.addChildNode(node)
    }
}
