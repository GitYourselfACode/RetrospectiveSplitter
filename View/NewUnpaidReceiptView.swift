//
//  NewUnpaidReceiptView.swift
//  RetrospectiveSplitter
//
//  Created by Matthew Evers on 15.12.24.
//

import SwiftUI

struct NewUnpaidReceiptView: View {
    
    @State private var nemSum: String = ""
    @State public var zoomText: Bool
    
    var body: some View {
        VStack (spacing: 100) {
            
            VStack (alignment: .leading) {
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
            }
            
            // Turn into user input
            TextField(
                "Unpaid Receipt",
                text: $nemSum)
            .textFieldStyle(.roundedBorder)
            .padding(40)
            .frame(height: 80)
            .onSubmit {
                zoomText = false
            }
            .onAppear {
                zoomText = true
            }
            
            Button {
                // Add data to landing page,
                // Add to storage,
                // Go back to landing page
            } label: {
                HStack (spacing: 40) {
                    Text("Add To Total")
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
    //function to use this text to add to total input
    //list on landing
    //And update total on top left
    
    
    
}

#Preview {
    NewUnpaidReceiptView(zoomText: true)
}
