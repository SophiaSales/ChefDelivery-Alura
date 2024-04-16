//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 16/04/24.
//

import SwiftUI

struct CarouselTabView: View {
    
    let ordersMocks: [OrderType] = [
        OrderType(id: 1, name: "banner barbecue", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner poke", image: "pokes-banner"),
    ]
    
    var body: some View {
        TabView{
            ForEach(ordersMocks) { mock in
                CaroselItemView(order: mock)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
