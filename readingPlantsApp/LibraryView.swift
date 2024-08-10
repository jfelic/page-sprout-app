//
//  LibraryView.swift
//  readingPlantsApp
//
//  Created by Julian Feliciano on 8/1/24.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        
        VStack {
            
            // Title Bar
            HStack {
                Text("Library")
                    .padding()
                    .font(.system(size: 35))
                    .bold()
                    .foregroundColor(Constants.green4)
                
                Spacer()
                
                Button(action: { print("Ellipsis pressed") }, label: {
                    Image(systemName: "ellipsis")
                })
                .foregroundColor(Constants.green2)
                .padding()
                .background(Color.white)
                .cornerRadius(20)
            }
            .padding()
            
            // Lists button
            HStack {
                Button(action: { print("Lists button pressed") }, label: {
                    Image(systemName: "list.bullet")
                    Text("Lists")
                    Spacer()
                    Image(systemName: "chevron.forward")
                        .padding()
                })
                .foregroundColor(.black)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.2)),
                    alignment: .bottom
                )
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.2)),
                    alignment: .top
                )
            }
            .padding()
            
            Spacer()
        }
        .background(Constants.green1)
    }
}

#Preview {
    LibraryView()
}
