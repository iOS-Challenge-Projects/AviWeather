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
    var shouldFetchUpdate = UserDefaults.standard.bool(forKey: "shouldFetchUpdate")
    
    lazy var fetchResultsController: NSFetchedResultsController<Airport> = {
        let fetchRequest: NSFetchRequest<Airport> = Airport.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "isFavorite", ascending: false)]
        
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
        //let mockDataLoader: NetworkLoader = MockDataLoader(data: weatherJSON!)
        //Call API
        let realDataLoader: NetworkLoader =  URLSession.shared
        
        //Pass fake or real api call
        let network = Network(loader: realDataLoader)
        
        network.fetchWeather(for: city) { weather, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            print("Success")
            if let weather = weather {
                self.weatherData = weather
                self.saveWeatherToCoreData()
                self.prepareMapData()
                self.delegate?.fetchDataReady()
            }
        }
    }
    
    func autoFetch() {
        fetchWeather(for: selectedAirport!.airportName!)
    }
    
    func weatherDateFormatter(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter.string(from: date)
    }
    
    // MARK: - Private Methods
    private func prepareMapData() {
        guard let weather = weatherData else {  return }
        
        let lat = CLLocationDegrees(weather.report.conditions.lat)
        let lon = CLLocationDegrees(weather.report.conditions.lon)
        initialLocation = CLLocation(latitude: lat, longitude: lon)
    }
    
    // MARK: - CoreData Methods
    func addNewAirport(name airportName: String) {
        //TODO: Check if the given entry is already a CoreData object to preven duplicates
        selectedAirport = Airport(airportName: airportName)
        saveToPersistentStore()
    }
    
    func saveWeatherToCoreData() {
        
        guard let data = weatherData else { return }
        let conditions = data.report.conditions
        let forecast = data.report.conditions
        let weatherConditions = WeatherConditions(text: conditions.text,
                                                  lon: conditions.lon,
                                                  lat: conditions.lat,
                                                  tempC: conditions.tempC)
        let weatherForecast = WeatherForecast(text: forecast.text,
                                              lon: forecast.lon,
                                              lat: forecast.lat )
        selectedAirport?.weatherConditions = weatherConditions
        selectedAirport?.weatherForecast = weatherForecast
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

