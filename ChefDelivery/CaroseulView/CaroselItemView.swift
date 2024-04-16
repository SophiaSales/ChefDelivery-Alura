//
//  CaroselItemView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 16/04/24.
//

import SwiftUI

struct CaroselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    CaroselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
        .previewLayout(.sizeThatFits)
        .padding()
}
