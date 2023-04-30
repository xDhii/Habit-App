//
//  WebService.swift
//  Habit
//
//  Created by Adriano Valumin on 29/04/23.
//

import Foundation

enum WebService {
    
    enum Endpoint: String {
        case base = "https://habitplus-api.tiagoaguiar.co"
        
        case postUser = "/users"
    }
    
    private static func completeUrl(path: Endpoint) -> URLRequest? {
        guard let url = URL(string: "\(Endpoint.base.rawValue)\(path.rawValue)") else { return nil}
                return URLRequest(url: url)
    }
    
    static func postUser(request: SignUpRequest) {
        
        guard let jsonData = try? JSONEncoder().encode(request) else { return }
        
        guard var urlRequest = completeUrl(path: .postUser) else {
            return
        }
        
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "accept")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Contenc-Type")
        urlRequest.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                print(error)
                return
            }
            print(String(data: data, encoding: .utf8))
            print("response\n")
            print(response)
            if let r = response as? HTTPURLResponse {
                print(r.statusCode)
            }
        }
        
        task.resume()
        
    }
}
