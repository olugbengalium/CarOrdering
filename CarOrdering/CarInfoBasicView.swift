//
//  CarInfoBasicView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 26/05/2023.
//

import SwiftUI

struct CarInfoBasicView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("E-Class W213".uppercased())
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                
                Spacer()
                Image(systemName: "info.circle")
                    .font(.system(size: 20))
                    .offset(y: -1)
            }
//            .background(Color(.red))
            VStack(alignment: .leading, spacing: 4) {
                Text("$80/hr")
                    .font(.system(size: 28))
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                HStack {
                    ForEach(0..<5) { _ in
                        Image(systemName: "star.fill")
                            .font(.system(size: 15))
                    }
                }
            }
        }
    }
}

struct CarInfoBasicView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoBasicView()
    }
}
