//
//  ViewController.swift
//  usdz3dInput
//
//  Created by Tunay Toksöz on 16.06.2022.
//

import UIKit
import SceneKit
import SceneKit.ModelIO

class ViewController: UIViewController {
    let sceneView = SCNView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       view = sceneView
               
        
        
        let url = Bundle.main.url(forResource: "AirForce", withExtension: "usdz")!
        let asset = MDLAsset(url: url)
        asset.loadTextures()
        let scene = SCNScene(mdlAsset: asset)
       
        scene.rootNode.position = SCNVector3(x: 0.0, y: 0.0, z: 0.0)
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
         
        cameraNode.position = SCNVector3(x: 0, y: 7, z: 50)
         
        scene.rootNode.addChildNode(cameraNode)
       
        /*
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
         
        lightNode.light?.type =  .omni
        lightNode.position = SCNVector3(x: 0, y: 5, z: 0)
         
       scene.rootNode.addChildNode(lightNode)
    */
    sceneView.scene = scene
                                  
    sceneView.showsStatistics = true
                                  
    sceneView.allowsCameraControl = true
                            
    sceneView.antialiasingMode = SCNAntialiasingMode.multisampling4X
    
    sceneView.autoenablesDefaultLighting=true
        
    }


}

