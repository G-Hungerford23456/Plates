//
//  HomeView.swift
//  Plates!
//
//  Created by G Hungerford on 6/29/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader{geometry in
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack{
                    Spacer()
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: geometry.size.width/2, height: geometry.size.width/2,
                               alignment: .center)
                        .foregroundColor(.white)
                        
                    Text("Home")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}

