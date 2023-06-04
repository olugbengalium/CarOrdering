//
//  CarDetailView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 26/05/2023.
//

import SwiftUI

struct CarDetailView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(hue: 1.0, saturation: 0.056, brightness: 0.924))
                .frame(height: 442)
            VStack(spacing: 20) {
                VStack(spacing: 30){
                    Image("tesla-s")
                        .resizable()
                        .scaledToFill()
                        .offset(y: 73)
//
//                    Image("tesla-text-logo")
//                        .resizable()
//                        .scaledToFill()
//                        .padding()
//                        .frame(width: 300, height: 30)
////                        .offset(y: -)
                }
                CarInfoView()
            }
            .offset(y: -155)
        }
        .padding(.horizontal, 12)
//        .offset(y: 100)
        .frame(height: 250)
    }
}

struct CarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailView()
            .previewLayout(.fixed(width: 400, height: 650))
    }
}
