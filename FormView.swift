//
//  FormView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 27/05/2023.
//

import SwiftUI
import Combine
//import UIKit

struct FormView: View {
    @ObservedObject var order = OrderViewModel()
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    init(){
        UITableView.appearance().sectionHeaderHeight = 0
        UITableView.appearance().sectionFooterHeight = 10
        UITableView.appearance().backgroundColor = .clear
        UISwitch.appearance().onTintColor = .blue
    }
    var body: some View {
        VStack {
            Form {
                rentalPeriod
                numberOfCars
                pickupTime
                location
                drivers
                orderComplete
            }
            .padding(30)
        }.frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

extension FormView {
    var rentalPeriod: some View{
        Section {
            Picker(selection: $order.rentalAmount, label:
                    Text("Rental period")) {
                ForEach(0 ..< order.rentalPeriods.count, id: \.self)
                {
                    Text("\(self.order.rentalPeriods[$0])")
                        .tag($0)
                }
            }
        }
        .listRowBackground(Color.gray)
    }
    var numberOfCars: some View {
        Section {
            Picker(selection: $order.amountOfCars, label:
                    Text("Number of cars")) {
                ForEach(0 ..< order.numberOfCars.count, id: \.self) {
                    Text("\(self.order.numberOfCars[$0])")
                        .tag($0)
                }
            }
        }
        .listRowBackground(Color.gray)
    }
    
    var pickupTime: some View {
        Section{
            Picker(selection: $order.pickupTime, label: Text("Pick-up time")) {
                ForEach(0 ..< order.pickupTimes.count, id: \.self) {
                    Text("In \(self.order.pickupTimes[$0]) mins")
                        .tag($0)
                }
            }
            .listRowBackground(Color.gray)
        }
    }
    
    var location: some View {
        Section{
            Picker(selection: $order.location, label: Text("Pick-up location")) {
                ForEach(0 ..< order.locations.count, id: \.self) {
                    Text("\(self.order.locations[$0])")
                        .tag($0)
                }
            }
            .listRowBackground(Color.gray)
            Picker(selection: $order.location, label: Text("Return location")) {
                ForEach(0 ..< order.locations.count, id: \.self) {
                    Text("\(self.order.locations[$0])")
                        .tag($0)
                }
            }
            .listRowBackground(Color.gray)
        }
    }
    
    var drivers: some View {
        Section {
            Toggle(isOn: $order.specialDriver) {
            Text("Drivers")
            }
            .toggleStyle(SwitchToggleStyle(tint: .green))
        }
        .listRowBackground(Color.gray)
    }
    
    var orderComplete: some View {
        Group {
            Section{
                HStack(alignment: .center) {
                    Spacer()
                    Text("$160")
                        .font(.system(size: 60))
                        .fontWeight(.medium)
                    Spacer()
                }
            }
//            Section{
//                Button(action: {
//                    self.order.isOrderCompleteVisible.toggle()
//                }) {
//                    Text("complete order".uppercased())
//                        .fontWeight(.medium)
//                       
//                    
//                }
//                .font(.system(size: 28))
//                    .fontWeight(.bold)
//                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .frame(height: 60)
//                    .background(Color.green)
//                    .cornerRadius(10)
//                    .foregroundColor(.white)
////                Toggle(isOn: $, label: <#T##() -> View#>)
//            }
        }
    }
    
}

