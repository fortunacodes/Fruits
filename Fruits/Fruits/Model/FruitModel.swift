//
//  FruitModel.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 4/6/23.
//

import SwiftUI

//MARK: -  FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
