//
//  ModalView.swift
//  DataHandelingWorkshop
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct DimmerView: View {
    @EnvironmentObject var lightBulb: Lightbulb
    var body: some View {
                VStack{
                    lightBulb.light
                        .foregroundColor(lightBulb.color)
                        .font(.system(size: 60))
                        .opacity(lightBulb.intensity)
                        .padding()
                    Slider(value: $lightBulb.intensity, in: 0.1...0.9)
               .frame(width: 150)
                .padding(5)
            
            }.navigationTitle("DimmerView")
            .navigationViewStyle(.automatic)
    }
    
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DimmerView().environmentObject(Lightbulb(color: .yellow, intensity: 1))
    }
}
