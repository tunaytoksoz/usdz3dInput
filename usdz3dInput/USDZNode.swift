//
//  USDZNode.swift
//  usdz3dInput
//
//  Created by Tunay Toksöz on 16.06.2022.
//

import Foundation
import SceneKit

class USDZNode: SCNReferenceNode {
    init?(
        name: String,
        position: SCNVector3? = nil,
        scale: SCNVector3? = nil,
        pivot: SCNMatrix4? = nil
    ) {
        guard let usdzURL: URL = Bundle.main.url(forResource: name, withExtension: "usdz") else { return nil }
        super.init(url: usdzURL)
        if let scale: SCNVector3 = scale {
            self.scale = scale
        }
        if let position: SCNVector3 = position {
            self.position = position
        }
        if let pivot: SCNMatrix4 = pivot {
            self.pivot = pivot // the billboard look's direction
        }
        self.load()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
