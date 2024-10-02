//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by APPLE on 31/08/24.
//
import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
