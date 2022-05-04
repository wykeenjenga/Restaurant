//
//  HomeView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct HomeView: View {
    //MARK: - property

    
    //MARK: - body
    var body: some View {
        
        
        VStack{
            
            HomeToolBar()
                .padding(6)
            
            HStack {
                Text("What would you \n like to eat?")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Spacer()
                
            }// : HStack
            .padding(6)

            
    
                
            VStack {
                
                //MARK: - To card view
                FeaturedFood()
                    .frame(height: 130)
                    .padding(12)
    
                //MARK: - Popular foods
                
                ScrollView(showsIndicators: false, content: {
                    
                    VStack {
                        PopularFoods()
                            .padding()
                        
                        TopFoodCardView()
                            .padding()
                        
                    }
                    
                })
            }
            Spacer()
            
        }// : VStack
        .background(primaryColor)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
