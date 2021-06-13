//
//  Network.swift
//  AviWeather
//
//  Created by FGT MAC on 6/2/21.
//


import Foundation

protocol NetworkLoader {
    func loadData(from url: URLRequest, completion: @escaping (Data?, Error?)-> ())
}

enum HTTPMethod: String {
    case get = "GET"
}

class Network: NSObject {
    //Real network call
    private let loader: NetworkLoader

    
    init(loader: NetworkLoader){
        self.loader = loader
    }
    
    func fetchWeather(for airport: String, completion: @escaping (Weather?, Error?) -> ()) {
        let baseURL = URL(string: "https://qa.foreflight.com")!
        
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        urlComponents?.path = "/weather/report/\(airport)"
        
        guard let requestURL = urlComponents?.url else {
            print("Error in urlComponents")
            return
        }
        
        var request = URLRequest(url: requestURL)
        request.setValue("1", forHTTPHeaderField: "ff-coding-exercise")
        request.httpMethod = HTTPMethod.get.rawValue
        
        
        loader.loadData(from: request) { data, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let data = data else { return }
            
            do{
                let weather = try JSONDecoder().decode(Weather.self, from: data)
                
                DispatchQueue.main.async {
                    completion(weather, nil)
                }
                
            }catch{
                completion(nil,error)
            }
        }
        
    }
}
