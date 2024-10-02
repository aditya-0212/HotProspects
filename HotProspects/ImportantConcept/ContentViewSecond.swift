//
//  ContentView.swift
//  HotProspects
//
//  Created by APPLE on 31/08/24.
//

import SwiftUI

struct ContentViewSecond: View {
    let users = ["virat","sachin","rohit","rahul"]
//    @State private var selectedItem: String?
    @State private var selectedItem = Set<String>()
    var body: some View {
        List(users,id: \.self,selection: $selectedItem){user in
            Text(user)
        }
        if selectedItem.isEmpty == false{
            Text("you selected \(selectedItem.formatted())")
        }
        EditButton()
    }
}

#Preview {
    ContentViewSecond()
}
