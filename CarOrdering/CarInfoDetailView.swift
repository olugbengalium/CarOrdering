//
//  CarInfoDetailView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 26/05/2023.
//

import SwiftUI

struct CarInfoDetailView: View {

    var body: some View {
        HStack {
            column1
            Spacer()
            column2
            Spacer()
            column3
        }.padding(.top, 15)
    }
}

struct CarInfoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoDetailView()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}

extension CarInfoDetailView {
    var column1: some View {
        VStack(alignment: .leading) {
            Text("Transmission")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.gray)
            
            Text("Automatic")
                .font(.system(size: 22))
                .fontWeight(.medium)
        }
    }
    
    var column2: some View {
        VStack(alignment: .leading) {
            Text("Class")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.gray)
            Text("Luxury")
                .font(.system(size: 22))
                .fontWeight(.medium)
        }
    }
    var column3: some View {
        VStack(alignment: .leading) {
            Text("Year")
                .font(.system(size: 22))
                .fontWeight(.medium)
                .foregroundColor(.gray)
            Text("2020")
                .font(.system(size: 22))
                .fontWeight(.medium)
        }
    }   
}
