//
//  AllFoodsModelr.swift
//  Food App
//
//  Created by Wykee Njenga on 5/4/22.
//

import Foundation

struct AllFoodModel: Codable, Identifiable{
    
    let id: Int
    var name: String
    let image: String
    let headline:  String
    let price: String
    let description: String
    let OtherTypes : [AllOtherTypesModel]
    
}

struct AllOtherTypesModel : Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
    let headline:  String
    let price: String
    let description: String
}

