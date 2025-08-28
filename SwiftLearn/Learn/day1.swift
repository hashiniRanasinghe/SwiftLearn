//
//  day1.swift
//  SwiftLearn
//
//  Created by Hashini Ranasinghe on 2025-08-28.
//

import SwiftUI

class CounterViewModel: ObservableObject {
    @Published var count = 0
    
    func increment() {
        count += 1
    }
}

struct day1 : View {
    @ObservedObject var viewModel = CounterViewModel()
    
    var body: some View {
        VStack{
            Text ("Count \(viewModel.count)")
            
            Button ("+")
            {
                viewModel.increment()
            }
        }
    }
}
