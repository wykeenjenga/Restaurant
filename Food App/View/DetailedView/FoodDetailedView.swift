//
//  FoodDetailedView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct FoodDetailedView: View {
    
    @EnvironmentObject var shop: Shop
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 6, content: {
                
                //MARK: - Toolbar
                DetailedToolBar()
                    .padding()
                
                //MARK: - header
                Header()
                    .padding()
                
                Image(shop.selectedFood?.image ?? "pizza")
                    .resizable()
                    .scaledToFit()
                    .offset(y: isAnimating ? 0 : -35)
                    .frame(width: 200, height: 200)
                
                HStack(alignment: .center, spacing: 0, content: {
                    Text("$")
                        .foregroundColor(AccentColor)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(shop.selectedFood?.price ?? "0.00")
                        .font(.title2)
                        .fontWeight(.bold)
                })
                
                //MARK: - buttons l, R , M
                QualityButtonsView()
                    .padding()
                
                
                //MARK: - Quantity buttons
                QuantityButtonsView()
                    .padding()
                
                
                //MARK: - Add to cart
                AddToCart()
                    .frame(width: 260, alignment: .center)
                    .shadow(color: .gray, radius: 4, x: 0, y: 2)
                    .padding()
                
                
                
            })
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 0.8)){
                isAnimating.toggle()
            }
        }
        .background(primaryColor)
    }
    
    
}

struct FoodDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailedView()
            .environmentObject(Shop())
    }
}
