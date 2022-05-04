//
//  HomeToolBar.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

struct HomeToolBar: View {
    
    //MARK: - body
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            
            Button(action: {
                
            }, label: {
                Image(systemName: "rectangle.grid.2x2.fill")
                    .font(.footnote)
            }).foregroundColor(.black)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.footnote)
            }).foregroundColor(.black)
            
        })

        
    }
}

struct HomeToolBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeToolBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
