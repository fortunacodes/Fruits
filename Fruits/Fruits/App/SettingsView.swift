//
//  SettingsView.swift
//  Fruits
//
//  Created by Jesús  Fortuna on 5/6/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits",
                                              labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are surces of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    }//: GROUPBOX
                    
                    //MARK: - SECTION 2
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization",
                                              labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onvoarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1) //To no shrink the text
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }//: TOGGLE
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )

                    }//: GROUPBOX
                    
                    //MARK: - SECTION 3
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application",
                                              labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Jesus Fortuna")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "GitHub", linkDestination: "github.com/fortunacodes")
                        SettingsRowView(name: "Instagram", linkLabel: "@jm.fortuna", linkDestination: "instagram.com/jm.fortuna/")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0")
                    }//: GROUPBOX
                    
                }//: VSTACK
                .navigationTitle(Text("Settings"))
                .toolbar{
                    HStack {
                        Spacer()
                        Button {
                            dismiss.callAsFunction()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }//: HSTACK
                }//: TOOLBAR
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
