//
//  ShowPayToView.swift
//  RetrospectiveSplitter
//
//  Created by Matthew Evers on 14.12.24.
//

import SwiftUI
import Charts

struct ChartData: Identifiable, Plottable {
    
    let id = UUID()
    //let payerName: String
    let primitivePlottable: Int
    let color: Color
    
    init?(primitivePlottable: Int) {
        self.primitivePlottable = primitivePlottable
        self.color = Color.blue
    }
    
    init?(primitivePlottable: Int, color: Color) {
        self.primitivePlottable = primitivePlottable
        self.color = color
    }
    
    
}

let data: [ChartData] = [
    .init(primitivePlottable: 12, color: Color.red),
    .init(primitivePlottable: 6, color: Color.blue),
    .init(primitivePlottable: 32, color: Color.orange),
    .init(primitivePlottable: 11, color: Color.green),
    .init(primitivePlottable: 38, color: Color.purple),
    .init(primitivePlottable: 18, color: Color.pink),
    .init( primitivePlottable: 7, color: Color.yellow),
].compactMap({ $0 })

struct ShowPayToView: View {
    var body: some View {
        NavigationView {
            VStack {
                Chart(data) { item in
                    SectorMark(angle: .value("Label", item))
                        .foregroundStyle(item.color)
                }
                //.chartXAxis("Label", color)
            }
            
        }
    }
}

#Preview {
    ShowPayToView()
}
