//
//  ContentView.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 29/5/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }.navigationTitle("Fruits")
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
