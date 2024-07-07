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
    
    var service = HomeService()
    
    var body: some View {
        
        ProductDetailHeaderView(product: product)
        
        Spacer()
        
        ProductDetailQuantityView(productQuantity: $productQuantity)
        
        Spacer()
        
        ProductDetailButtonView {
            Task {
                await confirmOrder()
            }
        }

    }
    
    func confirmOrder() async {
        do {
            let result = try await service.confirmOrder(product: product)
            switch result {
            case .success(let message):
                print(message)
            case .failure(let error):
                print(error.localizedDescription)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ProductDetailButtonView: View {
    
    var onButtonPress: () -> Void
    
    var body: some View {
        Button{
            onButtonPress()
        }label: {
            HStack{
                Image(systemName: "cart")
                
                Text("Enviar pedido")
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
