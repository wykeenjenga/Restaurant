//
//  AddToCart.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct AddToCart: View {
    
    var body: some View {
        
        Button(action: {
            //add to cart
            
            
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.subheadline)
                .fontWeight(.bold)
            Spacer()
        })
        .padding(16)
        .background(AccentColor)
        .cornerRadius(12)
    }
    
}

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart()
    }
}
