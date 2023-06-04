//
//  CarInfoView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 26/05/2023.
//

import SwiftUI

struct CarInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            CarInfoBasicView()
            CarInfoDetailView()
            CarInfoPhotosView()
            Spacer()
        }
        .frame(height: 320)
        .padding(.horizontal, 20)
    }
}

struct CarInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoView()
    }
}
