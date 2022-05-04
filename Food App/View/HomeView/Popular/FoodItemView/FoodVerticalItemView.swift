//
//  FoodVerticalItemView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct FoodVerticalItemView: View {
    
    @EnvironmentObject var shop: Shop
    
    let food: AllFoodModel
    
    var body: some View {
        
        ZStack {
            
            VStack {
                Text(food.name)
                    .fontWeight(.bold)
                    .font(.headline)
                
                Text(food.headline)
                    .fontWeight(.light)
                    .font(.footnote)
                
                Image(food.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                
                HStack{
                    Image(systemName: "dot.square")
                        .foregroundColor(Color.green)
                    
                    Spacer()
                }
                
                
                HStack(spacing: 0){
                    Text("$")
                        .foregroundColor(AccentColor)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text(food.price)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Spacer()
                
                    
                    Button(action: {
                        //open detailed view
                        withAnimation(.easeOut){
                            shop.selectedFood = food
                            shop.showingFood = true
                        }
                        
                    }, label: {
    
                        Spacer()
                        Image(systemName: "plus")
                            .foregroundColor(whiteColor)
                        Spacer()
                            
                    })
                    .padding(8)
                    .background(AccentColor)
                    .cornerRadius(50)
                    .frame(width: 50)
                    
                }
                
            }// : VStack
            
        } // : ZStack
        .padding(12)
    }
}

struct FoodVerticalItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodVerticalItemView(food: AllFoods[0])
            .previewLayout(.sizeThatFits)
            .frame(width: 180)
            .padding()
            .environmentObject(Shop())
    }
}
