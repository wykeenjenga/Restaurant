//
//  TopFoodCardView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct TopFoodCardView: View {
    var body: some View {
        
        
        VStack {
            
            HStack {
                Text("Top of the week")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            
            HStack(spacing: 6, content: {
                
                
                Image(topFood)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 100,maxHeight: 100, alignment: .center)
                    .padding(6)
    
                
                VStack(alignment: .leading, spacing: 6){
                    Text("Chicken Fiesta")
                        .foregroundColor(whiteColor)
                        .font(.title)
                        .fontWeight(.heavy)
                    Text("Hot Chicken Pizza with Fries")
                        .font(.subheadline)
                        .lineLimit(1)
                    
                    HStack{
                        Text("$")
                            .foregroundColor(AccentColor)
                            .font(.subheadline)
                            .fontWeight(.bold)
                        
                        Text("16.85")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
    
                }// : VStack
                
                Spacer()
                
                
            }) // : HStack
            .background(yellowColor.clipShape(CustomShape()))

        }// : ZStack
        
    }
}

struct TopFoodCardView_Previews: PreviewProvider {
    static var previews: some View {
        TopFoodCardView()
            .previewLayout(.sizeThatFits)
        
    }
}
