//
//  Header.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct Header: View {
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        VStack{
            Text(shop.selectedFood?.name ?? "")
                .font(.title)
                .fontWeight(.bold)
            
            Text(shop.selectedFood?.headline ?? "")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(grayColor)
            
            
            Image(shop.selectedFood?.image ?? "pizza")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
