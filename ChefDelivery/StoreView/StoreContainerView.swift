//
//  StoreContainerView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 16/04/24.
//

import SwiftUI

struct StoreContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMock){ mock in
                    StoreItemView(order: mock)
                }
            }
        }
        .padding(20)
    }
}

#Preview {
    StoreContainerView()
        .previewLayout(.sizeThatFits)
}
