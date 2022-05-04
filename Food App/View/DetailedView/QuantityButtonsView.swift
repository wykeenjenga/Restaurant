//
//  QuantityButtonsView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct QuantityButtonsView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 12, content: {
            
            Button(action: {
                
            }, label: {
                
                ZStack {
                    Image(systemName: "minus")
                        .foregroundColor(.black)
                }
                .padding(6)
                .foregroundColor(.black)
            })
            
            Button(action: {
                
            }, label: {
                
                ZStack {
                    Text("12")
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding(6)
                .foregroundColor(whiteColor)
                .background(AccentColor)
                .cornerRadius(4)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            })
            
            Button(action: {
                
            }, label: {
                
                ZStack {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                }
                .padding(6)
                .foregroundColor(.black)

            })

        }) // : HStack End of Quantity buttons
        .padding(.top)
    }
}

struct QuantityButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityButtonsView()
            .previewLayout(.sizeThatFits)
    }
}
