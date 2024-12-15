//
//  AddPayerView.swift
//  RetrospectiveSplitter
//
//  Created by Matthew Evers on 11.12.24.
//

import SwiftUI
import UIKit

struct AddPayerView: View {
    
    @State private var topLeftTotalPayText = 0.0
    @State private var totalSplitString = ""
    
    
    var body: some View {
        
        HStack (spacing: 220) {
            
            Text("Total \(totalSplitString)€")
            
            Button {
                //Open NewOwesMeView
            } label: {
                Image(systemName: "person.crop.circle.badge.plus")
                    .font(.system(size: 60))
            }
        }
        .offset(x: 0, y: -300)
        
        
        
        VStack (spacing: 5) {
            
            Button{
                
            } label: {
                HStack (spacing: 10) {
                    Text("Change Split")
                        .font(.system(size: 30))
                        //.padding()
                        //.padding(.horizontal, 20)
                        //.background(Color.blue)
                        .foregroundColor(Color.white)
                        //.cornerRadius(40)
                    //.offset(x: 0, y: 300)
                    Image(systemName: "align.vertical.bottom.fill")
                    //.offset(x: 0, y: 300)
                        .font(.system(size: 30))
                        .foregroundStyle(Color.white)
                }
                .padding()
                .padding(.horizontal, 50)
                .background(Color.blue)
                .cornerRadius(15)
                //.offset(x: 0, y: 300)
            }
            
            
            Button {
                
            } label: {
                HStack (spacing: 30) {
                    Text("Calculate Now")
                        .font(.system(size: 30))
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
        .offset(x: 0, y: 300)
    }
}

#Preview {
    AddPayerView()
}
