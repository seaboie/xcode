//
//  CheckoutView.swift
//  Landmarks
//
//  Created by krit on 18/6/2566 BE.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order;
    @State private var paymentType = "Cash";
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"];
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay ?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("Payment")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}
