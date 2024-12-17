//
//  TableTest.swift
//  RetrospectiveSplitter
//
//  Created by Matthew Evers on 16.12.24.
//

import SwiftUI

struct Payee: Identifiable {
    let id: Int
    var name: String
    var alreadyPaid: Float
}

struct TableTest: View {
        
    @State private var payees = [
            Payee(id: 1, name: "first",  alreadyPaid: 95.0),
            Payee(id: 1, name: "second",  alreadyPaid: 52.0),
            Payee(id: 1, name: "lasty",  alreadyPaid: 25.0)
            ]
    

        var body: some View {
            Table(payees) {
                TableColumn("Name", value: \.name)
                
                TableColumn("Paid So Far") { payee in
                    Text(String(payee.alreadyPaid))
                
            }
        }
    }
}

#Preview {
    TableTest()
}
