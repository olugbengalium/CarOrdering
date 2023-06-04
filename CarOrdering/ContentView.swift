//
//  ContentView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 26/05/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var order = OrderViewModel()
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        CarDetailView()
                            .frame(height: 600)
                        FormView()
                            .environmentObject(order)
                            .frame(height: 450)
                        Button(action: {
                                self.order.isOrderCompleteVisible.toggle()
                            self.order.sendOrder()
                        }) {
                            Text("COMPLETE ORDER")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 60)
                        }
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .frame(height: 60)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    .padding(.top, 40)
                }
                .navigationBarHidden(true)
            }
            CompleteOrderView()
                .environmentObject(order)
                .opacity(order.isOrderCompleteVisible ? 1 : 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
