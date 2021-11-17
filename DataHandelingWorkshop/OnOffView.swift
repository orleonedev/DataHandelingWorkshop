//
//  ContentView.swift
//  DataHandelingWorkshop
//
//  Created by Oreste Leone on 17/11/21.
//

import SwiftUI

struct OnOffView: View {

    @EnvironmentObject var lightBulb: Lightbulb
    @State private var showModal = false

    var body: some View {
        TabView {
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
                                Button("On/Off") {
                                    lightBulb.intensity = lightBulb.intensity == 1 ? 0 : 1
                                }
                                Button("Dim") {
                                    showModal.toggle()
                                    }
                                    .sheet(isPresented: $showModal,
                                           content: {
                                        ModalView(showModal: $showModal).environmentObject(lightBulb)
                                                   })
                            }.frame(width: 150)
                                .padding()
                                .foregroundColor(.blue)
                                .overlay(RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color.blue, lineWidth: 3))
                        }
                        .navigationTitle(Text("OnOffView"))
                    }   .navigationViewStyle(.stack)
                        .tabItem {
                            Label("On/Off", systemImage: "switch.2")
                        }
                    ColorView()
                        .tabItem {
                            Label("Color", systemImage: "eyedropper")
                        }
                }
            }
        }


struct OnOffView_Previews: PreviewProvider {
    static var previews: some View {
        OnOffView().environmentObject(Lightbulb(color: .yellow, intensity: 1))
    }
}
