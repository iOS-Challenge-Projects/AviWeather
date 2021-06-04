//
//  WeatherForecast+Convenience.swift
//  AviWeather
//
//  Created by FGT MAC on 6/4/21.
//

import Foundation
import CoreData


extension WeatherForecast {
    convenience init(text: String, lon: Float, lat: Float, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        
        self.text = text
        self.lon = lon
        self.lat = lat
    }
}
