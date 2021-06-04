//
//  WeatherViewModel.swift
//  AviWeather
//
//  Created by FGT MAC on 6/2/21.
//

import Foundation
import MapKit
import CoreData


protocol FetchDataDelegate {
    func fetchDataReady()
}

class WeatherViewModel {
    
    // MARK: - Private Properties
    private let moc = CoreDataStack.shared.mainContext
    
    // MARK: - Properties
    var delegate: FetchDataDelegate?
    var initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    var weatherData: Weather?
    var selectedAirport: Airport?
    
    lazy var fetchResultsController: NSFetchedResultsController<Airport> = {
        let fetchRequest: NSFetchRequest<Airport> = Airport.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "airportName", ascending: true)]
        
        let moc = CoreDataStack.shared.mainContext
        let frc = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: moc, sectionNameKeyPath: "isFavorite", cacheName: nil)
        do{
            try frc.performFetch()
        }catch{
            print("Unable to fetch Airports from main context")
        }
        
        return frc
    }()
    
    // MARK: - Network Methods
    func fetchWeather(for city: String) {
        //Call local JSON data sample
        let mockDataLoader: NetworkLoader = MockDataLoader(data: weatherJSON!)
        //Call API
        //let realDataLoader: NetworkLoader =  URLSession.shared
        
        //Pass fake or real api call
        let network = Network(loader: mockDataLoader)
        
        network.fetchWeather(for: city) { weather, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            print("Success")
            if let weather = weather {
                self.weatherData = weather
                self.prepareDetailData()
                self.delegate?.fetchDataReady()
            }
        }
    }
    
    // MARK: - Private Methods
    private func prepareDetailData() {
        guard let weather = weatherData else {  return }
        
        let lat = CLLocationDegrees(weather.report.conditions.lat)
        let lon = CLLocationDegrees(weather.report.conditions.lon)
        initialLocation = CLLocation(latitude: lat, longitude: lon)
    }
    
    // MARK: - CoreData Methods
    func addNewAirport(name airportName: String) {
        selectedAirport = Airport(airportName: airportName)
        saveToPersistentStore()
    }
    
    func setInitialData() {
        let hasLaunchedOnce = UserDefaults.standard.bool(forKey: "HasLaunchedOnce")
        if !hasLaunchedOnce {
            let _ = Airport(airportName: "KPWM", isFavorite: true)
            let _ = Airport(airportName: "KAUS", isFavorite: true)
            saveToPersistentStore()
            UserDefaults.standard.set(true, forKey: "HasLaunchedOnce")
        }
        
    }
    
    func deleteFromCoreData(for indexPath: IndexPath) {
        let airport = fetchResultsController.object(at: indexPath)
        
        moc.delete(airport)
        saveToPersistentStore()
    }
    
    func saveToPersistentStore() {
    do{
        try moc.save()
    }catch{
        print("Error saving data to core data: \(error)")
    }
}
}

