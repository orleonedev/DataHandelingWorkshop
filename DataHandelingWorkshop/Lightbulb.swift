//
//  Lightbulb.swift
//  DataHandelingWorkshop
//
//  Created by Oreste Leone on 17/11/21.
//

import Foundation
import SwiftUI

class Lightbulb: ObservableObject {
    
    let light = Image(systemName: "lightbulb.fill")
    
    internal init(color: Color, intensity: Double){
        self.color = color
        self.intensity = intensity
    }
    
    @Published var color: Color
    @Published var intensity: Double
}
