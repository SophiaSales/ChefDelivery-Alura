//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 14/05/24.
//

import Foundation

struct ProductType: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$" + price.formatPrice()
    }
    
}
