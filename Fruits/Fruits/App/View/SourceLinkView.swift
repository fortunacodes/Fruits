//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 5/6/23.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
            
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
