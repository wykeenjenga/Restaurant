//
//  QualityButtonsView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct QualityButtonsView: View {
    var body: some View {
        
        HStack(alignment: .center, spacing: 12, content: {
            
            Button(action: {
                
            }, label: {
                
                ZStack {
                    Text("R")
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding(6)
                .foregroundColor(.black)
                .background(whiteColor)
                .cornerRadius(4)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            })
            
            Button(action: {
                
            }, label: {
                
                ZStack {
                    Text("M")
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
                    Text("L")
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding(6)
                .foregroundColor(.black)
                .background(whiteColor)
                .cornerRadius(4)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            })

        }) // : HStack End of buttons
        .padding(.top)
    }
}

struct QualityButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        QualityButtonsView()
            .previewLayout(.sizeThatFits)
    }
}
