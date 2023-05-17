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

    enum NetworkError {
        case badRequest
        case notFound
        case unauthorized
        case internalServerError
    }

    enum Result {
        case success(Data)
        case failure(NetworkError, Data?)
    }

    private static func completeUrl(path: Endpoint) -> URLRequest? {
        guard let url = URL(string: "\(Endpoint.base.rawValue)\(path.rawValue)") else { return nil }
        return URLRequest(url: url)
    }

    private static func call<T: Encodable>(path: Endpoint,
                                           body: T,
                                           completion: @escaping (Result) -> Void) {
                                               
        guard var urlRequest = completeUrl(path: path) else {
            return
        }

        guard let jsonData = try? JSONEncoder().encode(body) else { return }

        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "accept")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = jsonData

        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                print(error)
                completion(.failure(.internalServerError, nil))
                return
            }
            
            if let r = response as? HTTPURLResponse {
                switch r.statusCode {
                    case 400:
                        completion(.failure(.badRequest, data))
                        break
                    case 200:
                        completion(.success(data))
                    default:
                        break
                }
            }

            print("response\n")
            print(response)
        }

        task.resume()
    }

    static func postUser(request: SignUpRequest) {
        call(path: .postUser, body: request, completion: { result in
            switch result {
                case .failure(let error, let data):
                if let data = data {
                    print(String(data: data, encoding: .utf8))
                }
                    break
                case .success(let data):
                    print(String(data: data, encoding: .utf8))
                    break
            }
        })
    }
}
