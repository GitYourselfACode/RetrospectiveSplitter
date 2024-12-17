//
//  PracticeChart.swift
//  RetrospectiveSplitter
//
//  Created by Matthew Evers on 15.12.24.
//

import SwiftUI
import Charts

struct ToPieChart: Identifiable {
    let id = UUID()
    let name: String
    let proportion: Double
    //let color: Color
}

struct EgData {
    static var toPieChart: [ToPieChart] = [
        .init(name: "Firsty", proportion: 30),
        .init(name: "Second", proportion: 55),
        .init(name: "Lasty", proportion: 15)
        //.init(name: "Firsty", proportion: 30, color: Color.indigo),
        //.init(name: "Second", proportion: 55, color: Color.teal),
        //.init(name: "Lasty", proportion: 15, color: Color.purple)
    ]
}

struct PracticeChart: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Current Payment Proportons")
                Chart {
                    ForEach(EgData.toPieChart) { payer in
                        SectorMark(angle: .value("Redundant", payer.proportion)/*angularInset: 2*/)
                            .foregroundStyle(by: .value("AnyLabel", payer.name))
                        //.foregroundStyle(payer.color))
                        //.cornerRadius(6)
                            .annotation(position: .overlay) {
                                Text("\(payer.name)")
                                    .foregroundStyle(Color.white)
                            }
                    }
                }
                .frame(
                    width: 300,
                    height: 300
                )
                Spacer()
            }
            .padding(40)
        }
    }
}

#Preview {
    PracticeChart()
}
