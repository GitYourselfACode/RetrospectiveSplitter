//
//  NewPayeeView.swift
//  RetrospectiveSplitter
//
//  Created by Matthew Evers on 16.12.24.
//

import SwiftUI

struct NewPayeeView: View {
    
    @State private var nameInput: String = ""
    @State private var amountPaidInput: String = ""
    @State public var zoomNameText: Bool
    @State public var zoomPaidText: Bool
    
    var body: some View {
        VStack {
            
            Button {
                // Go to landing page
            } label: {
                Image(systemName: "arrowshape.turn.up.backward.circle")
                    .foregroundStyle(Color.blue)
                    .font(.system(size: 60))
                    .alignmentGuide(.leading) { d in d[.trailing]
                    }
            }
            .offset(x: -120, y: -180)
            
            HStack {
                TextField(
                    "Name",
                    text: $nameInput
                )
                .textFieldStyle(.roundedBorder)
                .padding(2)
                .frame(height: 80)
                .onSubmit {
                    zoomNameText = false
                }
                
                TextField(
                    "Already Paid",
                    text: $amountPaidInput
                )
                .textFieldStyle(.roundedBorder)
                .padding(40)
                .onSubmit {
                    zoomPaidText = false
                }
            }
            .padding(.bottom, 160)
            
            Button {
                // Add data to landing page,
                // Add to storage,
                // Go back to landing page
            } label: {
                HStack (spacing: 40) {
                    Text("Add Payee")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.white)
                        .padding(.horizontal, 35)
                }
                .background(Color.blue)
                .cornerRadius(15)
                .padding(.horizontal, 80)
                .padding(.vertical, 20)
            }
            
        }
        
    }
}

#Preview {
    NewPayeeView(zoomNameText: true, zoomPaidText: false)
    
}
