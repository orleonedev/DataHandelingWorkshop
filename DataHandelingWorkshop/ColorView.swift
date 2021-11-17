//
//  ColorView.swift
//  DataHandelingWorkshop
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct ColorView: View {
    @EnvironmentObject var lightBulb: Lightbulb
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                HStack{
                    lightBulb.light
                        .foregroundColor(lightBulb.color)
                        .font(.system(size: 60))
                        .opacity(lightBulb.intensity)
                        .padding()
                }
                Group{
                    Button("Change Color") {
                        lightBulb.color = lightBulb.color == .yellow ? .red : .yellow
                    }
                }.frame(width: 150)
                    .padding()
                    .foregroundColor(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.blue, lineWidth: 3))
            }
            .navigationTitle(Text("ColorView"))
        }.navigationViewStyle(.stack)
    }
    
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView().environmentObject(Lightbulb(color: .yellow, intensity: 1))
    }
}
