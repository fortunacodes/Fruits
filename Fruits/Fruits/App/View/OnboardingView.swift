//
//  OnboardingView.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 4/6/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                FruitCardView()
            }// : LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
