//
//  ContextMenu.swift
//  HotProspects
//
//  Created by APPLE on 01/09/24.
//

import SwiftUI

struct ContextMenuUI: View {
    
    @State private var background = Color.red
    var body: some View {
        Text("Hy Aditya")
            .padding()
            .background(background)
            .clipShape(.rect(cornerRadius: 10))
        
       Text("Change Color")
            .padding()
            .contextMenu{
                Button("Red",systemImage: "checkmark.circle.fill",role: .destructive){
                    background = Color.red
                }
                .foregroundColor(.red)
                Button("Blue"){
                    background = Color.blue
                }
                Button("Yelow"){
                    background = Color.yellow
                }
            }
        
    }
}

#Preview {
    ContextMenuUI()
}
