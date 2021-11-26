//
//  Global.swift
//  Plates
//
//  Created by G Hungerford on 7/29/21.
//

import SwiftUI

final class GolbalVars: ObservableObject {
    @Published var bg: Bool = false
    @Published var Plate1: String =  "Alaska"
    @Published var Selected = 2
    @Published var Numbers = Int.random(in: 1...51)
    
    
    
    
    
    
}

