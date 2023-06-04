//
//  CarOrderingApp.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 26/05/2023.
//

import SwiftUI

@main
struct CarOrderingApp: App {
    @StateObject private var order = OrderViewModel()
    var body: some Scene {
        WindowGroup {
//            LoginView()
//            FormsView()

//            CarDetailView()
            ContentView()
//            CompleteOrderView()
                .environmentObject(order)
        }
    }
}
