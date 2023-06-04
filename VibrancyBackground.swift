//
//  VibrancyBackground.swift
//  CarOrdering
//
//  Created by Gbenga Abayomi on 29/05/2023.
//
import SwiftUI
struct VibrancyBackground: UIViewRepresentable {
    var style: UIBlurEffect.Style = .light
    func makeUIView(context:
                    UIViewRepresentableContext<VibrancyBackground>) ->
    UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style:
                                                        style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context:
                      Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
