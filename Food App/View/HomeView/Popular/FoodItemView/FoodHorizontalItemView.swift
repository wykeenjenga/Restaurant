//
//  FoodHorizontalItemView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct FoodHorizontalItemView: View {
    
    let otherFoodtype: AllFoodModel
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        
        VStack(alignment: .center, content: {
            
            ForEach(otherFoodtype.OtherTypes){ food in
            
                
                VStack(alignment: .center) {
                    Text(food.name)
                        .fontWeight(.bold)
                        .font(.footnote)
                    
                    Text(food.headline)
                        .fontWeight(.light)
                        .font(.caption)
                    
                    
                    HStack{
                        
                        Image(food.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                        
                        
                        VStack{
                            
                            HStack(spacing: 0){
                                Text("$")
                                    .foregroundColor(AccentColor)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                
                                Text(food.price)
                                    .font(.caption)
                                    .fontWeight(.bold)
                            }
                            
                            
                            
                            Button(action: {
                                
                                //open detailed view
                                withAnimation(.easeOut){
                                    //shop.selectedFood = food
                                    //shop.showingFood = true
                                }
                                
                            }, label: {
            
                                Spacer()
                                Image(systemName: "plus")
                                    .foregroundColor(whiteColor)
                                Spacer()
                                    
                            })
                            .padding(4)
                            .background(AccentColor)
                            .cornerRadius(50)
                            .frame(width: 30)
                            
                            
                        } // : VStack
                        
                    } // : HStack
                    
                    HStack{
                        Image(systemName: "dot.square")
                            .foregroundColor(Color.green)
                        Spacer()
                    }
                    
                }// : VStack
                .padding(12)
                .background(whiteColor.clipShape(CustomShape()))
                .shadow(radius: 4)
            
                
            }
            
        }) // : root VStack
    }
}

struct FoodHorizontalItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodHorizontalItemView(otherFoodtype: AllFoods[0])
            .previewLayout(.sizeThatFits)
            .environmentObject(Shop())
    }
}
