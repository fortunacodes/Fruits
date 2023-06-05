//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 5/6/23.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTY
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                }
                else if (linkLabel != nil && linkDestination != nil){
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        HStack {
                            Text(linkLabel!)
                            Image(systemName: "link")
                                .foregroundColor(.pink)
                        }
                    }
                }
                else{
                    EmptyView()
                }
            }//: HSTACK
        }//: VSTACK
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Jesus F.")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: "Website", linkLabel: "GitHub", linkDestination: "https://github.com/fortunacodes")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
        }
    }
}
