//
//  AddPayerView.swift
//  RetrospectiveSplitter
//
//  Created by Matthew Evers on 11.12.24.
//

import SwiftUI
import UIKit

struct LandingPageView: View {
    
    
    
    @State private var topLeftTotalPayText = 0.0
    @State private var totalPayString = ""
    
    
    var body: some View {
        
// Add the VStack for all elements on page!
        
        HStack (spacing: 220) {
            
            Text("Total \(totalPayString)€")
            
            Button {
                //Open NewOwesMeView
            } label: {
                Image(systemName: "person.crop.circle.badge.plus")
                    .font(.system(size: 60))
            }
        }
        .offset(x: 0, y: -300)
        
        
        
// Add Table of payees here
        
        
        
        
        VStack (spacing: 5) {
            
            Button{
                // open NewUnpaidReceiptView
            } label: {
                Text("Add Unpaid Receipt")
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal, 34)
                    .background(Color.blue)
                    .cornerRadius(15)
            }
            
            Button{
                //
            } label: {
                HStack (spacing: 20) {
                    Text("Change Split")
                        .font(.system(size: 25))
                        //.padding()
                        //.padding(.horizontal, 20)
                        //.background(Color.blue)
                        .foregroundStyle(Color.white)
                        //.cornerRadius(40)
                    //.offset(x: 0, y: 300)
                    Image(systemName: "align.vertical.bottom.fill")
                    //.offset(x: 0, y: 300)
                        .font(.system(size: 25))
                        .foregroundStyle(Color.white)
                }
                .padding()
                .padding(.horizontal, 45)
                .background(Color.blue)
                .cornerRadius(15)
                //.offset(x: 0, y: 300)
            }
            
            
            Button {
                
            } label: {
                HStack (spacing: 25) {
                    Text("Calculate Now")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.white)
                    //.offset(x: 0, y: 320)
                    Image(
                        systemName:
                            "eurosign.arrow.trianglehead.counterclockwise.rotate.90"
                    )
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
                    //.offset(x: 0, y: 320)
                    
                }
                .padding()
                .padding(.horizontal, 32)
                .background(Color.blue)
                .cornerRadius(15)
            }
        }
        .offset(x: 0, y: 250)
    }
}

#Preview {
    LandingPageView()
}
