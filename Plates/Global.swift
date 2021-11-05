//
//  Global.swift
//  Plates
//
//  Created by G Hungerford on 7/29/21.
//

import SwiftUI

final class GolbalVars: ObservableObject {
    @Published var bg: Bool = false
    @Published var Plate1: String
    @Published var Selected: Int = 2
    @Published var Numbers: Int
    
    
    init(){
        self.Numbers = Int.random(in: 0...51)
    
    }
    
    
    
    
}

