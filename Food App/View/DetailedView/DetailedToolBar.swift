//
//  DetailedToolBar.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct DetailedToolBar: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.footnote)
            }).foregroundColor(.black)
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart")
                    .font(.footnote)
            }).foregroundColor(.black)
            
        })
    }
}

struct DetailedToolBar_Previews: PreviewProvider {
    static var previews: some View {
        DetailedToolBar()
    }
}
