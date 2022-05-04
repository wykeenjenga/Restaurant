//
//  PopularFoods.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct PopularFoods: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        VStack {
            
            //MARK: - top section
            HStack {
                
                Text("Popular")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("See All")
                    .foregroundColor(.gray)
                    .fontWeight(.medium)
            }// : HStack
            
            
            //MARK: - popular foods section
            VStack {
                
                ForEach(AllFoods){ food in
                    
                    HStack(alignment: .center, spacing: 4, content: {
                        FoodVerticalItemView(food: food)
                            .background(whiteColor.clipShape(CustomShape()))
                            .shadow(radius: 4)
                            .onTapGesture {
                                withAnimation(.easeInOut){
                                    shop.selectedFood = food
                                    shop.showingFood = true
                                }
                            }
                        
                        Spacer()
                        
                        FoodHorizontalItemView(otherFoodtype: food)
                        
                    })// : HStack
                    
                }.padding(12)
            } // : popular foods VStack END
            

        }// : VStack
        

    }
}

struct PopularFoods_Previews: PreviewProvider {
    static var previews: some View {
        PopularFoods()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
