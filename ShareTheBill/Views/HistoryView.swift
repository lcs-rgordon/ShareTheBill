//
//  HistoryView.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

struct HistoryView: View {
    
    // MARK: Stored properties
    // Stores the history of tip calculations
    @Binding var history: [Result]

    // MARK: Computed property
    var body: some View {
        VStack {
            
            Text("History")
                .font(.headline.smallCaps())
                .padding()
            
            List(history.reversed()) { somePriorResult in
                ResultView(priorResult: somePriorResult)
            }

        }

    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: Binding.constant(historyForPreviews))
    }
}
