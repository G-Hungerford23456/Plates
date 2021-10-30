//
//  PreLaunch.swift
//  Plates
//
//  Created by G Hungerford on 8/5/21.
//

import SwiftUI

struct PreLaunch: View {
    @State private var show = false
    @State private var angle : Double = 360
    @State private var opacity : Double = 1
    @State private var scale : CGFloat = 1
    var body: some View {
        GeometryReader { geometry in
            Group{
                ZStack{
                    if show{
                        ContentView()
                    }else{
                        Color("bg").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Image("Launch").resizable().frame(width: geometry.size.width/4, height: geometry.size.width/4)
                            .cornerRadius(20)
                            .rotation3DEffect(
                                .degrees(angle),
                                axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
                                
                            )
                            .opacity(opacity)
                            .scaleEffect(scale)
                    }
                }
            }.onAppear{
                withAnimation(.linear(duration: 2)){
                    angle = 0
                    scale = 3
                    opacity = 0
                }
                withAnimation(Animation.linear.delay(1.75)){
                    show = true
                }
        }
        }
    }
}

struct PreLaunch_Previews: PreviewProvider {
    static var previews: some View {
        PreLaunch()
    }
}
