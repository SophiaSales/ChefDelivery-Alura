//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 16/04/24.
//

import SwiftUI

struct CarouselTabView: View {
    
    @State private var currentIndex = 1
    
    let ordersMocks: [OrderType] = [
        OrderType(id: 1, name: "banner barbecue", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner poke", image: "pokes-banner"),
    ]
    
    var body: some View {
        TabView (selection: $currentIndex ) {
            ForEach(ordersMocks) { mock in
                CaroselItemView(order: mock)
                    .tag(mock.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) {
                _ in
                
                withAnimation(.easeInOut(duration: 1)){
                    if currentIndex > ordersMocks.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
