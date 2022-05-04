//
//  ContentView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        if shop.showingFood == false && shop.selectedFood == nil {
            HomeView()
        }else{
            FoodDetailedView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
