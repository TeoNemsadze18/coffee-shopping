//
//  CartButton.swift
//  cofee
//
//  Created by teona nemsadze on 20.04.23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            Image(systemName: "cart")
                .frame(width: 34, height: 20)
                .padding(.top, 5)
                
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.832, brightness: 0.811))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
