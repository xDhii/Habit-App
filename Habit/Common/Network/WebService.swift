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
        case login = "/auth/login"
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

    enum ContentType: String {
        case json = "application/json"
        case formUrl = "application/x-www-form-urlencoded"
    }
    
    private static func completeUrl(path: Endpoint) -> URLRequest? {
        guard let url = URL(string: "\(Endpoint.base.rawValue)\(path.rawValue)") else { return nil }
        return URLRequest(url: url)
    }
    
    private static func call(path: Endpoint,
                             contentType: ContentType,
                             data: Data?,
                             completion: @escaping (Result) -> Void) {
        
        guard var urlRequest = completeUrl(path: path) else {
            return
            
        }

        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "accept")
        urlRequest.setValue(contentType.rawValue, forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = data

        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.internalServerError, nil))
                return
            }

            if let r = response as? HTTPURLResponse {
                switch r.statusCode {
                case 400:
                    completion(.failure(.badRequest, data))
                    break
                case 401:
                    completion(.failure(.unauthorized, data))
                    break
                case 200:
                    completion(.success(data))
                default:
                    break
                }
            }
        }

        task.resume()
    }


    private static func call<T: Encodable>(path: Endpoint,
                                           body: T,
                                           completion: @escaping (Result) -> Void) {

        guard let jsonData = try? JSONEncoder().encode(body) else { return }

        call(path: path, contentType: .json, data: jsonData, completion: completion)
    }
    
    private static func call(path: Endpoint,
                             params: [URLQueryItem],
                             completion: @escaping (Result) -> Void) {
        
        guard let urlRequest = completeUrl(path: path) else { return }
        guard let absoluteUrl = urlRequest.url?.absoluteString else { return }
        var components = URLComponents(string: absoluteUrl)
        components?.queryItems = params
        
        call(path: path,
             contentType: .formUrl,
             data: components?.query?.data(using: .utf8),
             completion: completion)
    }

    static func postUser(request: SignUpRequest, completion: @escaping (Bool?, ErrorResponse?) -> Void) {
        call(path: .postUser, body: request) { result in
            switch result {
            case .failure(let error, let data):
                if let data = data {
                    if error == .badRequest {
                        let decoder = JSONDecoder()
                        let response = try? decoder.decode(ErrorResponse.self, from: data)
                        completion(nil, response)
                    }
                }
                break
            case let .success(data):
                completion(true, nil)
                break
            }
        }
    }
    
    static func login(request: SignInRequest,
                      completion: @escaping (SignInResponse?, SignInErrorResponse?) -> Void) {
        
        call(path: .login, params: [
            URLQueryItem(name: "username", value: request.email),
            URLQueryItem(name: "password", value: request.password)
        ]) { result in
            switch result {
            case .failure(let error, let data):
                if let data = data {
                    if error == .unauthorized {
                        let decoder = JSONDecoder()
                        let response = try? decoder.decode(SignInErrorResponse.self, from: data)
                        completion(nil, response)
                    }
                }
                break
            case .success(let data):
                let decoder = JSONDecoder()
                let response = try? decoder.decode(SignInResponse.self, from: data)
                completion(response, nil)
                break
            }
        }
    }
}
