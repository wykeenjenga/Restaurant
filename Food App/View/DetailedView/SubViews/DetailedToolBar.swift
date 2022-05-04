//
//  DetailedToolBar.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import SwiftUI

struct DetailedToolBar: View {
    
    @EnvironmentObject var shop: Shop
    @State var isFav: Bool = false
    @State private var favIcon: String = "heart"
    
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            
            Button(action: {
                withAnimation(.easeInOut(duration: 0.5)){
                    shop.showingFood = false
                    shop.selectedFood = nil
                }
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
            }).foregroundColor(.black)
            
            Spacer()
            
            Button(action: {
                
                if(isFav != true){
                    favIcon = "heart"
                    isFav = true
                }else{
                    favIcon = "heart.fill"
                    isFav = false
                }
                
                
            }, label: {
                if favIcon == "heart"{
                    Image(systemName: "\(favIcon)")
                        .font(.title)
                        .foregroundColor(.black)
                    
                }else{
                    Image(systemName: "\(favIcon)")
                        .font(.title)
                        .foregroundColor(AccentColor)
                }
                
            }).foregroundColor(.black)
            
        })
    }
}

struct DetailedToolBar_Previews: PreviewProvider {
    static var previews: some View {
        DetailedToolBar()
            .environmentObject(Shop())
    }
}
