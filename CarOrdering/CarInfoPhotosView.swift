//
//  CarInfoPhotosView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 26/05/2023.
//

import SwiftUI

struct CarInfoPhotosView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) { // Step 1
            Text("Car Interior") // Step 2
                .font(.system(size: 22))
                .fontWeight(.medium)
                .foregroundColor(.gray)
            HStack { // Step 3
                Image("pic1")
                    .resizable()
                    .frame(width: 170, height: 94)
                    .cornerRadius(10)
                Image("pic2")
                    .resizable()
                    .frame(width: 170, height: 94)
                    .cornerRadius(10)
            }.frame(height: 94)
        }.padding(.top, 10)
    }
}
struct CarInfoPhotosView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoPhotosView()
            .previewLayout(.fixed(width: 400, height: 150))
    }
}
