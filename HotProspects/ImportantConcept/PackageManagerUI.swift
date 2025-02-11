//
//  PackageManagerUI.swift
//  HotProspects
//
//  Created by APPLE on 10/09/24.
//
import SamplePackage
import SwiftUI

struct PackageManagerUI: View {
    let possibleNumbers = 1...60
    
    var results: String{
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.formatted()
    }
    var body: some View {
        Text(results)
    }
}

#Preview {
    PackageManagerUI()
}
