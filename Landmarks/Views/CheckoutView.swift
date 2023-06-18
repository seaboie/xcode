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
    @State private var isAddLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    let tipAmounts = [10, 15, 20, 25, 0]
    @State private var tipAmount = 15;
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"];
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay ?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) { item in
                        Text(item)
                    }
                }
                Toggle("Add iDine loyalty card", isOn: $isAddLoyaltyDetails.animation())
                
                if (isAddLoyaltyDetails) {
                    TextField("Enter your iDine ID", text: $loyaltyNumber, axis: .horizontal)
                }
            }
            Section("Add a Tip", content: {
                Picker("Percentage: ", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) { amount in
                        Text("\(amount)%")
                    }
                }
                .pickerStyle(.segmented)
            })
            Section("Total: $100", content: {
                Button("Confirm Order") {
                    //
                }
            })
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
