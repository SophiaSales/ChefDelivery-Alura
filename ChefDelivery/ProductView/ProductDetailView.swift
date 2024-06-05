//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 17/05/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    @State private var productQuantity = 1
    
    var body: some View {
        
        ProductDetailHeaderView(product: product)
        
        Spacer()
        
        ProductDetailQuantityView(productQuantity:
                                    $productQuantity)
        
        Spacer()
        
        ProductDetailButtonView()

    }
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button{
            print("Botao Precionado")
        }label: {
            HStack{
                Image(systemName: "cart")
                
                Text("Adiconar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical,16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark"), radius: 10, x: 5, y: 8)
        }
    }
}

#Preview {
    ProductDetailView(product: storesMock[0].products[0])
}
