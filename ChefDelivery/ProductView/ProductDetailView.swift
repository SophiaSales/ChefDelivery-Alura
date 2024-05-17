//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 17/05/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    @State private var productQuatity = 1
    
    var body: some View {
        VStack(alignment: .leading){
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            
            Text(product.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            
            Text(product.description)
                .padding(.horizontal)
            
            Text(product.formattedPrice)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        }
        
        Spacer()
        
        VStack (spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack {
                Button{
                    if productQuatity > 1 {
                        productQuatity -= 1
                    }
                }label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
                Text("\(productQuatity)")
                    .font(.title2)
                    .bold()
                
                Button{
                    productQuatity += 1
                }label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
        }
        
        Spacer()
        
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
