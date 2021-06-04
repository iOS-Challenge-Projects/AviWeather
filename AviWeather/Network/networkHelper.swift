//
//  Helper.swift
//  AviWeather
//
//  Created by FGT MAC on 6/2/21.
//

import Foundation

extension URLSession: NetworkLoader{
    func loadData(from url: URLRequest, completion: @escaping (Data?, Error?) -> ()) {
        dataTask(with: url) { (data, _,error) in
            completion(data,error)
        }.resume()
    }
}
