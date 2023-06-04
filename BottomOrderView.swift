//
//  BottomOrderView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 29/05/2023.
//

import SwiftUI

struct BottomOrderView: View {
    @ObservedObject var order = OrderViewModel()
    var body: some View {
        VStack {
            info
            map
            button
            Spacer()
        }
    }
}

struct BottomOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOrderView()
    }
}

extension BottomOrderView {
    var info: some View {
        HStack {
            HStack(spacing: 4){
                Text("1")
                    .fontWeight(.medium)
                    .font(.system(size: 22))
                    
                Text("car")
                    .font(.system(size: 22))
                    .fontWeight(.ultraLight)
            }
            Spacer()
            HStack(spacing: 4) {
                Text("2")
                    .fontWeight(.medium)
                    .font(.system(size: 22))
                Text("hours")
                    .fontWeight(.ultraLight)
                    .font(.system(size: 22))
            }
            Spacer()
            HStack(spacing: 4) {
                Text("$160")
                    .fontWeight(.medium)
                    .font(.system(size: 22))
            }
            
        }
        .padding(.horizontal, 15)
        .frame(height: 55)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.gray)
        .cornerRadius(10)
    }
    
    
    var map: some View {
        ZStack(alignment: Alignment(horizontal: .center,
                                    vertical: .bottom)) {
            Image("sample-map")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 30)
            // Add next step here
            HStack {
                Image(systemName: "clock")
                HStack(spacing: 4) {
                    Text("The car will arrive in")
                        .fontWeight(.ultraLight)
                        .font(.system(size: 22))
                    Text("20 mins")
                        .fontWeight(.medium)
                        .font(.system(size: 22))
                }
                
                Spacer()
                Image("disclosure-indicator")
            }
            .frame(height: 40)
            .padding(.horizontal, 5)
            .background(Color.white)
            .cornerRadius(5)
            .offset(y: -35)
            .padding(.horizontal, 5)
            
        }
                                    .frame(maxWidth: 370)
    }
    
    
    var button: some View {
        Button(action: {
            self.order.isCancelOrderVisible.toggle() }) {
                Text("CANCEL ORDER")
            }
            .frame(height: 55)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.gray)
            .buttonStyle(PlainButtonStyle())
            .cornerRadius(10)
            .foregroundColor(.blue)
            .fontWeight(.bold)
            .font(.system(size: 28))
    }
}
