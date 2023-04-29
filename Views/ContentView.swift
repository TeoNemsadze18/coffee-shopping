//
//  ContentView.swift
//  cofee
//
//  Created by teona nemsadze on 20.04.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
     
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { Product in
                        ProductCard(product: Product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle("Coffee Shop")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
