//
//  OrderView.swift
//  Landmarks
//
//  Created by krit on 18/6/2566 BE.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { order in
                        HStack {
                            Text(order.name)
                            Spacer()
                            Text("$\(order.price)")
                        }
                    }
                }
                
                Section {
                    NavigationLink("Place Order") {
                        CheckoutView()
                    }
                }
            }
            .navigationTitle("Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
