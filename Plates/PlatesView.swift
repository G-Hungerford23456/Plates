//
//  HomeView.swift
//  Plates!
//
//  Created by G Hungerford on 6/29/21.
//


import SwiftUI
struct PlatesView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.systemGray6]
        

    }
    @EnvironmentObject var globalVars: GolbalVars
    
    let columns: [GridItem] = [GridItem(.flexible())
    ]

    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.green]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ScrollView(.vertical, showsIndicators: false){
                        ScrollView(.horizontal, showsIndicators: false){
                            VStack{
                                LazyVGrid(columns: columns){
                                    ForEach(Plates){ i in
                                        NavigationLink(
                                            destination: ClaimedView(),
                                            label: {
                                                Text(i.name)
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .frame(width: geometry.size.width, height: 100)
                                                    .listRowBackground(Color.clear)
                                                    .background( globalVars.bg == false ? Color(.systemGreen) : Color(.systemBlue))
                                                    .border(Color.white)
                                                
                                            })
                                    }
                                }
                                
                            }
                            .navigationTitle("State Plates")
                            
                        }
                    }
                }
            }
        }
    }
}
struct Plate: Identifiable{
    var id = UUID()
    var name: String
    var num: Int
    
}
var Plates = [
    Plate(name: "Alabama", num: 1),
    Plate(name: "Alaska", num: 2),
    Plate(name: "Arizona", num: 3),
    Plate(name: "Arkansas", num: 4),
    Plate(name: "California", num: 5),
    Plate(name: "Colorado", num: 6),
    Plate(name: "Connecticut", num: 7),
    Plate(name:"Delaware", num: 8),
    Plate(name: "D.C", num: 9),
    Plate(name: "Florida", num: 10),
    Plate(name: "Georgia", num: 11),
    Plate(name: "Hawaii", num: 12),
    Plate(name: "Idaho", num: 13),
    Plate(name: "Illinois", num: 14),
    Plate(name: "Indiana", num: 15),
    Plate(name: "Iowa", num: 16),
    Plate(name: "Kansas", num: 17),
    Plate(name: "Kentucky", num: 18),
    Plate(name: "Louisiana", num: 19),
    Plate(name: "Mane", num: 20),
    Plate(name: "Maryland", num: 21),
    Plate(name: "Massachusetts", num: 22),
    Plate(name: "Michigan", num: 23),
    Plate(name: "Minnesota", num: 24),
    Plate(name: "Mississippi", num: 25),
    Plate(name: "Missouri", num: 26),
    Plate(name: "Montana", num: 27),
    Plate(name: "Nebraska", num: 28),
    Plate(name: "Nevada", num: 29),
    Plate(name: "New Hamshire", num: 30),
    Plate(name: "New Jersey", num: 31),
    Plate(name: "New Mexico", num: 32),
    Plate(name: "New York", num: 33),
    Plate(name: "North Carolina", num: 34),
    Plate(name: "North Dakota", num: 35),
    Plate(name: "Ohio", num: 36),
    Plate(name: "Oklahoma", num: 37),
    Plate(name: "Oregon", num: 38),
    Plate(name: "Pennsylvania", num: 39),
    Plate(name: "Rhode Island", num: 40),
    Plate(name: "South Carolina", num: 41),
    Plate(name: "South Dekota", num: 42),
    Plate(name: "Tennessee", num: 43),
    Plate(name: "Texas", num: 44),
    Plate(name: "Utah", num: 45),
    Plate(name: "Vermont", num: 46),
    Plate(name: "Vriginia", num: 47),
    Plate(name: "Washington", num: 48),
    Plate(name: "West Virginia", num: 49),
    Plate(name: "Wisconsin", num: 50),
    Plate(name: "Wyoming", num: 51)
]
struct PlatesView_Previews: PreviewProvider {
    static var previews: some View {
        PlatesView()
            .environmentObject(GolbalVars())
            
    }
}


