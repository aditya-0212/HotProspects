//
//  InterpolationView.swift
//  HotProspects
//
//  Created by APPLE on 01/09/24.
//

import SwiftUI

struct InterpolationView: View {
    var body: some View {
        Image(.example)
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .background(.black)
       
    }
}

#Preview {
    InterpolationView()
}
