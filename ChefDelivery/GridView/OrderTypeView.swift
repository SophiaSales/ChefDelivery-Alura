//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 15/04/24.
//

import SwiftUI

struct OrderTypeView: View {
    
    let orderType: OrderType
    
    var body: some View {
        VStack (spacing: 5 ){
            Image(orderType.image)
                .resizable() //ocupa todo espaco disponivel
                .scaledToFit() //ocupa espaco determinado
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            Text(orderType.name)
                .font(.system(size: 10))
        }
        .frame(width: 70, height: 100)
    }
}

#Preview {
    OrderTypeView(orderType: OrderType(id: 1, name: "Restaurantes", image: "hamburguer"))
        .previewLayout(.sizeThatFits)
}
