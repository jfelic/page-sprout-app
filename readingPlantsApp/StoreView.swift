//
//  StoreView.swift
//  readingPlantsApp
//
//  Created by Julian Feliciano on 8/1/24.
//

import SwiftUI

struct StoreView: View {
    var body: some View {
        ZStack {
            
            Image("house1")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .background(Color(Constants.green1))
    }
}

#Preview {
    StoreView()
}
