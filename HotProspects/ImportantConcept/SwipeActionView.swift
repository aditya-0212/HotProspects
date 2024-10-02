//
//  SwipeActionView.swift
//  HotProspects
//
//  Created by APPLE on 02/09/24.
//

import SwiftUI

struct SwipeActionView: View {
    var body: some View {
        List{
            Text("Aditya Choubisa")
                .swipeActions{
                    Button("Delete",systemImage: "minus.circle",role:.destructive){
                        print("Delete")
                    }
                }
                .swipeActions(edge: .leading){
                    Button("send message",systemImage: "message"){
                        print("Hii adi")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    SwipeActionView()
}
