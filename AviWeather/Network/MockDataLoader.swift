//
//  MockDataLoader.swift
//  AviWeather
//
//  Created by FGT MAC on 6/4/21.
//

import Foundation

class MockDataLoader: NetworkLoader {
    var data: Data?
    var error: Error?
    
    init(data: Data) {
        self.data = data
    }
    
    func loadData(from url: URLRequest, completion: @escaping (Data?, Error?) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    
}
