//
//  CompleteOrderView.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 29/05/2023.
//

import SwiftUI

struct CompleteOrderView: View {
    var body: some View {
        VStack {
            TopOrderView()
                .padding(.top, 20)
            BottomOrderView()
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CompleteOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteOrderView()
    }
}
