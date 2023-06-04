//
//  CancelModalView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 29/05/2023.
//

import SwiftUI

struct CancelModalView: View {

    @EnvironmentObject var order:OrderViewModel

    var body: some View {
        VStack(spacing: 20) {
            header
            buttons
        }
        .padding(.horizontal, 10)
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 190)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    var header: some View {
        HStack {
            VStack(alignment: .leading, spacing: -10) {
                Text("CANCEL ORDER?")
                    .fontWeight(.bold)
                    .font(.system(size: 30))

                Text("You’ll return to the car details")
                    .fontWeight(.ultraLight)
                    .font(.system(size: 22))
            }

            Spacer()
        }
    }
    
    var buttons: some View {
        HStack {
            Button(action: {
                self.order.isCancelOrderVisible.toggle()
                self.order.isModalVisible.toggle()
            }) {
                Text("No, Keep it".uppercased())
                    .padding(20)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            }
//            .buttonStyle(TeslaButtonStyle())
            .background(Color.gray)
            .cornerRadius(8)
            .clipShape(Rectangle())
//            Spacer()

            Button(action: {
                self.order.isCancelOrderVisible.toggle()
                self.order.isModalVisible.toggle()
            }) {
                Text("CANCEL")
                    .padding(20)
            }
            .clipShape(Rectangle())
//            .buttonStyle(TeslaButtonStyle())
            .background(Color.red)
            .foregroundColor(.white)
        }
    }
}

struct CancelModalView_Previews: PreviewProvider {
    static var previews: some View {
        CancelModalView()
    }
}
