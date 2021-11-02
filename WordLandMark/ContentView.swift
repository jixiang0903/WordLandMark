//
//  ContentView.swift
//  WordLandMark
//
//  Created by jixiang on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            
            List(landmarks) { Landmark in
                NavigationLink(destination: LandmaekDetail(landmark: Landmark)) {
                    HStack {
                        Image(Landmark.imageName)
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text(Landmark.name)
                            Text(Landmark.city)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("世界地标")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
