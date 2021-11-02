//
//  LandmaekDetail.swift
//  WordLandMark
//
//  Created by jixiang on 2021/11/2.
//

import SwiftUI

struct LandmaekDetail: View {
    let landmark : Landmark
    @State var zoomed = false
    
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .navigationBarTitle(Text(landmark.name), displayMode: .inline)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation(.linear(duration: 1)) {
                        self.zoomed.toggle()
                    }
                }
            
            if !zoomed {
                Text(landmark.city)
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding()
                    .transition(.move(edge: .trailing))
            }
        }
    }
}

struct LandmaekDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmaekDetail(landmark: landmarks[0])
        }
    }
}
