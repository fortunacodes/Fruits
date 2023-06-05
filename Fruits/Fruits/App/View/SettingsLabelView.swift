//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 5/6/23.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTY
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
