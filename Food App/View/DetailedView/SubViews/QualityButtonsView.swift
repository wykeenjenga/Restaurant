//
//  QualityButtonsView.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct QualityButtonsView: View {
    
    //You can think of a logical way... this is just manual way

    @State private var bgColor: [Color] = [whiteColor, AccentColor, whiteColor]
    @State private var foregroundColor: [Color] = [.black, whiteColor, .black]
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 12, content: {
            
            Button(action: {
                
                bgColor[0] = AccentColor
                bgColor[1] = whiteColor
                bgColor[2] = whiteColor
                
                foregroundColor[0] = whiteColor
                foregroundColor[1] = .black
                foregroundColor[2] = .black
                
                
            }, label: {
                
                ZStack {
                    Text("R")
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding(6)
                .foregroundColor(foregroundColor[0])
                .background(bgColor[0])
                .cornerRadius(4)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            })
            
            Button(action: {
                
                bgColor[0] = whiteColor
                bgColor[1] = AccentColor
                bgColor[2] = whiteColor
                
                foregroundColor[0] = .black
                foregroundColor[1] = whiteColor
                foregroundColor[2] = .black
                
            }, label: {
                
                ZStack {
                    Text("M")
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding(6)
                .foregroundColor(foregroundColor[1])
                .background(bgColor[1])
                .cornerRadius(4)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            })
            
            Button(action: {
                
                bgColor[0] = whiteColor
                bgColor[1] = whiteColor
                bgColor[2] = AccentColor
                
                foregroundColor[0] = .black
                foregroundColor[1] = .black
                foregroundColor[2] =  whiteColor
                
                
            }, label: {
                
                ZStack {
                    Text("L")
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding(6)
                .foregroundColor(foregroundColor[2])
                .background(bgColor[2])
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
