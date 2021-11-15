//
//  ImageContainerView.swift
//  Final Space SwiftUI
//
//  Created by Leandro Favre on 14/11/2021.
//

import SwiftUI

struct ImageContainerView: View {
    
    var imgUrl: String
    var name: String
    var status: String
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: imgUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .cornerRadius(10)
            .padding(6)
            
            Text(name)
                .font(.title)
                .fontWeight(.heavy)
                .padding(.top, 10)
            
            Text(status)
                .font(.title3)
                .fontWeight(.light)
//                .padding(.top, 10)
        }
    }
}

struct ImageContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ImageContainerView(imgUrl: "https://finalspaceapi.com/api/character/avatar/gary_goodspeed.png", name: "Gary", status: "Alive")
    }
}
