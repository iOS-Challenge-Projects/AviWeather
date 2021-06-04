//
//  Airport+Convenience.swift
//  AviWeather
//
//  Created by FGT MAC on 6/3/21.
//

import Foundation
import CoreData


extension Airport {
    convenience init(airportName: String,id: UUID = UUID(), isFavorite: Bool = false , context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        
        self.airportName = airportName
        self.id = id
        self.isFavorite = isFavorite
    }
}
