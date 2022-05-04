//
//  Food_AppApp.swift
//  Food App
//
//  Created by Wykee Njenga on 5/3/22.
//

import SwiftUI

@main
struct Food_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
