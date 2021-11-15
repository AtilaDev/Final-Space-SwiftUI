//
//  ContentView.swift
//  Final Space SwiftUI
//
//  Created by Leandro Favre on 14/11/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @StateObject var viewModel = ViewModel()
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.spaces, id: \.id) { space in
                    NavigationLink(destination: {
                        ImageContainerView(imgUrl: space.imgURL, name: space.name, status: space.status)
                    }, label: {
                        ListItemView(imgUrl: space.imgURL, name: space.name, status: space.status)
                    }) //: LINK
                } //: LOOP
            } //: LIST
            .navigationTitle("Final Space")
        } //: NAVIGATION
        .onAppear(perform: {
            viewModel.getSpaces()
        })
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
