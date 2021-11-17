//
//  DataHandelingWorkshopApp.swift
//  DataHandelingWorkshop
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

@main
struct DataHandelingWorkshopApp: App {
    @StateObject var lightBulb = Lightbulb(color: .yellow, intensity: 1)
    var body: some Scene {
        WindowGroup {
            OnOffView().environmentObject(lightBulb)
        }
    }
}
