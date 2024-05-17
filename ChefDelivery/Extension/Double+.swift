//
//  Double+.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 17/05/24.
//

import Foundation

extension Double{
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
