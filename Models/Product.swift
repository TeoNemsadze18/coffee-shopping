//
//  Product.swift
//  cofee
//
//  Created by teona nemsadze on 20.04.23.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Americano", image: "americano", price: 12),
                   Product(name: "Capucino", image: "capucino", price: 11),
                   Product(name: "Caramel", image: "caramel", price: 8),
                   Product(name: "Espresso", image: "espresso", price: 12),
                   Product(name: "Latte", image: "latte", price: 11),
                   Product(name: "MilkShake", image: "milkshake", price: 15),
                   Product(name: "Turkish", image: "turkish", price: 11),
                   Product(name: "With IceCream", image: "with-icecream", price: 10)]
 
