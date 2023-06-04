//
//  StartButtonView.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 29/5/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        Button {
            print("Exit the onboarding")
        } label: {
            Text("Start")
        }

    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
