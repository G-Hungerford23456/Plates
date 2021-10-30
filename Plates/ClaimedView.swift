//
//  ClaimedView.swift
//  Plates
//
//  Created by G Hungerford on 7/27/21.
//

import SwiftUI

struct ClaimedView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.systemGray6]
        
    }
    @EnvironmentObject var globalVars: GolbalVars
    var body: some View {
        NavigationView {
            GeometryReader{geometry in
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    VStack(spacing: 40){
                        Image(globalVars.Plate1)
                            .resizable()
                            .frame(width: geometry.size.width/1.5, height: geometry.size.width/2.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Button(action: {
                            self.globalVars.bg.toggle()
                        }, label: {
                            Text("Claim Your Plate")
                                .frame(width: 300, height: 50)
                                .foregroundColor(.white)
                                .background(globalVars.bg == false ? Color(.systemGreen) : Color(.systemBlue))
                                .cornerRadius(25)
                                .font(.system(size: 18, weight: .bold, design: .default))
                        })
                        Spacer()
                    }.navigationTitle("State Plates")
                    
                }
            }
        }
    }
}

struct ClaimedView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        ClaimedView()
            .environmentObject(GolbalVars())
            
                
        }
    }
}
