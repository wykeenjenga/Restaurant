//
//  Shop.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import Foundation

class Shop: ObservableObject {
    //allows instances of class to be used everywhere
    @Published var showingFood: Bool = false
    @Published var selectedFood: AllFoodModel? = nil
    
}
