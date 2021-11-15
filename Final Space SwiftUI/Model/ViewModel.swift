//
//  ViewModel.swift
//  Final Space SwiftUI
//
//  Created by Leandro Favre on 14/11/2021.
//

import Foundation

final class ViewModel: ObservableObject {
    // MARK: - PROPERTIES
    
    @Published var spaces: SpaceModel = []
    
    func getSpaces() {
        let urlSession = URLSession.shared
        let url = URL(string: "https://finalspaceapi.com/api/v0/character")
        
        urlSession.dataTask(with: url!) { data, response, error in
            if let _ = error {
                print("Error")
            }
            
            if let data = data,
               let httpResponse = response as? HTTPURLResponse,
               httpResponse.statusCode == 200 {
                let finalSpaceDataModel = try? JSONDecoder().decode(SpaceModel.self, from: data)
                DispatchQueue.main.async {
                    self.spaces = finalSpaceDataModel ?? []
                }
            }
        }.resume()
    }
}
