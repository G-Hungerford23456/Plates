//
//  ContentView.swift
//  Plates!
//
//  Created by G Hungerford on 6/23/21.
//

import SwiftUI
import GoogleMobileAds
struct ContentView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.systemGray6]
        
    }
    @EnvironmentObject var globalVars: GolbalVars
    var body: some View {
        
    
        VStack {
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                PlatesView()
                    .tabItem {
                        Image(systemName: "signpost.right")
                        Text("Plates")
                    }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            }
            GADBannerViewController()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: -130)
        }
        
        
        
    }
    
    
    
    // Mark: - GADBannerViewController
    
    struct GADBannerViewController: UIViewControllerRepresentable {
        
        func makeUIViewController(context: Context) -> some UIViewController {
            let view = GADBannerView(adSize: kGADAdSizeBanner)
            let viewController = UIViewController()
          //  let testID = "ca-app-pub-3940256099942544/6300978111"
            let realID = "ca-app-pub-1623573829747407/7680155952"
            // Banner Ad
            view.adUnitID = realID
            view.rootViewController = viewController
            
            // View Controller
            viewController.view.addSubview(view)
            viewController.view.frame = CGRect(origin: .zero, size: kGADAdSizeBanner.size)
            
            //Load an ad
            view.load(GADRequest())
            
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                ContentView()
                    .environmentObject(GolbalVars())
            }
                
        }
    }
    
}
