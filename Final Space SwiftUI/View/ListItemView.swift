//
//  ListItemView.swift
//  Final Space SwiftUI
//
//  Created by Leandro Favre on 14/11/2021.
//

import SwiftUI

struct ListItemView: View {
    // MARK: - PROPERTIES
    
    var imgUrl: String
    var name: String
    var status: String
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                AsyncImage(url: URL(string: imgUrl)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .cornerRadius(10)
                .frame(width: 60, height: 60)
                .padding(6)
                
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(name)
                        .font(.title2)
                        
                    Text(status)
                        .font(.title3)
                        .foregroundColor(.gray)
                } //: VSTACK
                .padding(.leading, 10)
                
                Spacer()
            } //: HSTACK
            .frame(maxWidth: .infinity)
            .padding(2)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.purple, lineWidth: 1)
            )
        } //: VSTACK
    }
}

// MARK: - PREVIEW

struct ListItemView_Previews: PreviewProvider {
    static let imgUrl = "https://finalspaceapi.com/api/character/avatar/gary_goodspeed.png"
    static let name = "Gary Goodspeed"
    static let status = "Male"
    
    static var previews: some View {
        ListItemView(imgUrl: imgUrl, name: name, status: status)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
