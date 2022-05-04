//
//  PopularFoods.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct PopularFoods: View {
    
    
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
            
            
            //MARK: - products section
            
            VStack {
                ForEach(AllFoods){ food in
                    
                    HStack{
                        FoodVerticalItemView(food: food)
                            .background(whiteColor.clipShape(CustomShape()))
                            .shadow(radius: 4)
                        
                        Spacer()
                        
                        FoodHorizontalItemView(otherFoodtype: food)
                        
                    }// : HStack
                }.padding(12)
            }
            
            
            

        }// : VStack
        

    }
}

struct PopularFoods_Previews: PreviewProvider {
    static var previews: some View {
        PopularFoods()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
