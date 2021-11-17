//
//  ModalView.swift
//  DataHandelingWorkshop
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct ModalView: View {
    @Binding var showModal: Bool
    @EnvironmentObject var lightBulb: Lightbulb
    
    var body: some View {
        NavigationView {
            Group{
                VStack{
                    lightBulb.light
                        .foregroundColor(lightBulb.color)
                        .font(.system(size: 60))
                        .opacity(lightBulb.intensity)
                        .padding(20)
                        
                    Slider(value: $lightBulb.intensity, in: 0.1...0.9)
               .frame(width: 150)
                .padding(5)
                .navigationBarItems(trailing: Button("Done", action: {
                    showModal.toggle()
                })).foregroundColor(.none)
                }
            }
        }
    }
    
}


struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showModal: .constant(true)).environmentObject(Lightbulb(color: .yellow, intensity: 1))
    }
}
