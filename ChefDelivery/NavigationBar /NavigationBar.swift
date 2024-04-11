//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 11/04/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button("R. Vergueiro, 3185") {
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action: {}){
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    NavigationBar()
        .previewLayout(.sizeThatFits)
        .padding()
}
