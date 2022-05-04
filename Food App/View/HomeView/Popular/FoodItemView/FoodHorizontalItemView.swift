//
//  FoodHorizontalItemView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct FoodHorizontalItemView: View {
    
    let otherFoodtype: AllFoodModel
    
    var body: some View {
        VStack {
            
            ForEach(otherFoodtype.OtherTypes){ food in
                
                VStack {
                    Text(food.name)
                        .fontWeight(.bold)
                        .font(.subheadline)
                    
                    Text(food.headline)
                        .fontWeight(.light)
                        .font(.footnote)
                    
                    
                    HStack{
                        
                        Image(food.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                        
                        
                        VStack{
                            
                            HStack{
                                Text("$")
                                    .foregroundColor(AccentColor)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                
                                Text(food.price)
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                            }
                            
                            
                            
                            Button(action: {
                                
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
                .padding()
                .background(whiteColor.clipShape(CustomShape()))
                .shadow(radius: 4)
                
                Spacer()
                
            }
            
        } // : root VStack
    }
}

struct FoodHorizontalItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodHorizontalItemView(otherFoodtype: AllFoods[0])
            .previewLayout(.sizeThatFits)
    }
}
