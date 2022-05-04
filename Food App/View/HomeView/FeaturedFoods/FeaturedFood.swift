//
//  FeaturedFood.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct FeaturedFood: View {
    
    var body: some View {
        
        ZStack {
            
            TabView{
                ForEach(FeaturedFoods){ food in
                    TopCard(food: food)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        } // : ZStack

    }
}

struct FeaturedFood_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedFood()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
