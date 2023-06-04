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
            HStack (spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }//: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
            
        } //: BUTTON
        .accentColor(Color.white)
    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
