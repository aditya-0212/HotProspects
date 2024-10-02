//
//  TabView.swift
//  HotProspects
//
//  Created by APPLE on 31/08/24.
//

import SwiftUI

struct TabViewUI: View {
    @State private var selectedTab = "One"

      var body: some View {
//          TabView(selection: $selectedTab) {
//              Button("Show Tab 2") {
//                  selectedTab = "Two"
//              }
//              .tabItem {
//                  Label("One", systemImage: "star")
//              }
//              .tag("One")
//
//              Text("Tab 2")
//                  .tabItem {
//                      Label("Two", systemImage: "circle")
//                  }
//                  .tag("Two")
//          }
          TabView {
              NavigationStack {
                  Text("Content for Tab 1")
              }
              .tabItem {
                  Label("One", systemImage: "star")
              }

              NavigationStack {
                  Text("Content for Tab 2")
              }
              .tabItem {
                  Label("Two", systemImage: "circle")
              }
          }
      }
}

#Preview {
    TabViewUI()
}
