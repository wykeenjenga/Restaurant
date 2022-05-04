//
//  TopCard.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct TopCard: View {
    
    //MARK: - property
    let food: FoodTypeModel
    
    
    //MARK: - Body
    var body: some View {
        VStack{
            
            HStack{
                
                Spacer()
                
                VStack(alignment: .center, spacing: 12, content: {
                    
                    Text(food.headline)
                        .font(.subheadline)
                        .foregroundColor(grayColor)
                        .fontWeight(.semibold)
                    
                    Button(action: {
                        
                    }, label: {
                        
                        ZStack {
                            Text("   Buy Now   ")
                                .font(.body)
                                .fontWeight(.bold)
                        }
                        .padding(6)
                        .foregroundColor(AccentColor)
                        .background(whiteColor)
                        .cornerRadius(100)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)

                    })
                    
                }) // : VStack
                
                
                Image(food.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 120, alignment: .center)
                
                Spacer()
                    
            } // : HStack
            .background(
                yellowColor.clipShape(CustomShape())
            )
            .shadow(radius: 2)
            
            
        } // : VStack

    }
}

struct TopCard_Previews: PreviewProvider {
    static var previews: some View {
        TopCard(food: FeaturedFoods[0])
            .previewLayout(.sizeThatFits)
    }
}
