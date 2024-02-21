/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
Extensions and utilities.
*/

import SwiftUI
import RealityKit

@available(visionOS 1.0, *)
@available(macOS, unavailable)
@available(iOS, unavailable)
extension Entity {
    /// Property for getting or setting an entity's `modelComponent`.
    @available(macOS 10.15, iOS 13.0, *)
    var modelComponent: ModelComponent? {
        get { components[ModelComponent.self] }
        set { components[ModelComponent.self] = newValue }
    }
    @available(macOS 10.15, iOS 13.0, *)
    var descendentsWithModelComponent: [Entity] {
        var descendents = [Entity]()
        
        for child in children {
            if child.components[ModelComponent.self] != nil {
                descendents.append(child)
            }
            descendents.append(contentsOf: child.descendentsWithModelComponent)
        }
        return descendents
    }
}

@available(visionOS 1.0, *)
@available(macOS, unavailable)
@available(iOS, unavailable)
extension Entity {
    @available(macOS 10.15, iOS 13.0, *)
    subscript(parentMatching targetName: String) -> Entity? {
        if name.contains(targetName) {
            return self
        }
        
        guard let nextParent = parent else {
            return nil
        }
        
        return nextParent[parentMatching: targetName]
    }
    @available(macOS 10.15, iOS 13.0, *)
    func getParent(nameBeginsWith name: String) -> Entity? {
        if self.name.hasPrefix(name) {
            return self
        }
        guard let nextParent = parent else {
            return nil
        }
        
        return nextParent.getParent(nameBeginsWith: name)
    }
    @available(macOS 10.15, iOS 13.0, *)
    func getParent(withName name: String) -> Entity? {
        if self.name == name {
            return self
        }
        guard let nextParent = parent else {
            return nil
        }
        
        return nextParent.getParent(withName: name)
    }
    @available(macOS 10.15, iOS 13.0, *)
    subscript(descendentMatching targetName: String) -> Entity? {
        if name.contains(targetName) {
            return self
        }
        
        var match: Entity? = nil
        for child in children {
            match = child[descendentMatching: targetName]
            if let match = match {
                return match
            }
        }
        
        return match
    }
    @available(macOS 10.15, iOS 13.0, *)
    func getSelfOrDescendent(withName name: String) -> Entity? {
        if self.name == name {
            return self
        }
        var match: Entity? = nil
        for child in children {
            match = child.getSelfOrDescendent(withName: name)
            if match != nil {
                return match
            }
        }
        
        return match
    }
    @available(macOS 10.15, iOS 13.0, *)
    func forward(relativeTo referenceEntity: Entity?) -> SIMD3<Float> {
        normalize(convert(direction: SIMD3<Float>(0, 0, +1), to: referenceEntity))
    }
    
    var forward: SIMD3<Float> {
        forward(relativeTo: nil)
    }
}

extension SIMD4 {
    var xyz: SIMD3<Scalar> {
        self[SIMD3(0, 1, 2)]
    }
}

