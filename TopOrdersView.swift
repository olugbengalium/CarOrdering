////
////  TopOrderView.swift
////  CarOrdering
////
////  Created by Gbenga Abayomi on 29/05/2023.
////
//
//import SwiftUI
//
//struct TopOrderView: View {
//    @ObservedObject var order = OrderViewModel()
//    var body: some View {
//        VStack {
//            closeBtn
//            carInfo
//        }
//    }
//}
//
//struct TopOrderView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopOrderView()
//    }
//}
//
//extension TopOrderView {
//    var closeBtn: some View {
//        Group {
//            HStack { // Step 1
//                Button(action: {
//                    self.order.isOrderCompleteVisible.toggle() }) {
////                        Text("order")
//                        Image("close-btn")
//                            .padding(5)
//                    }
//                Spacer()
//            }
//            .buttonStyle(PlainButtonStyle())
//            Text("ORDER COMPLETED")
//                .font(.title)
//                .font(.system(size: 42))
//                .fontWeight(.bold)
//            
//        }
//    }
//    var carInfo: some View {
//        VStack(spacing: 0) {
//            HStack {
//                Spacer()
//                Image(systemName: "info.circle")
//                    .font(.system(size: 28))
//                    .offset(x: -30)
//            }
//            ZStack {
//                Image("car-bg-shape")
//                Image("tesla-s")
//                    .resizable()
//                    .frame(width: 268, height: 125)
//            }
//            Text("Mercedes W213")
//                .font(.title)
//                .fontWeight(.bold)
//                .font(.system(size: 21))
//                .padding(.top, 30)
//        }
//    }
//}
