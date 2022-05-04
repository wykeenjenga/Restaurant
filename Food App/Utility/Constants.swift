//
//  Constants'.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import Foundation
import SwiftUI

//data

let FeaturedFoods: [FoodTypeModel] = Bundle.main.decode("food.json")
let AllFoods: [AllFoodModel] = Bundle.main.decode("AllFoods.json")
let AllOtherTypes = [AllOtherTypesModel].self


//colors
let AccentColor: Color = Color("accentColor")
let primaryColor: Color = Color("primaryColor")
let whiteColor: Color = Color("whiteColor")
let yellowColor: Color = Color("yellowColor")
let grayColor: Color = Color("grayColor")



//images

let topCardImage: String = String("mixed_food")
let topFood: String = String("chicken_fruits")


//UI


//size
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 1)
}
