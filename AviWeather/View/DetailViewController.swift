//
//  DetailViewController.swift
//  AviWeather
//
//  Created by FGT MAC on 6/2/21.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel: WeatherViewModel?
    private var isWeatherViewEnable = true
    private var autoFetchData: Timer?
    private var isAutoFetchEnable: Bool = false
    // MARK: - Outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var lastUpdateLabel: UILabel!
    @IBOutlet weak var enableAutoFetchSwitch: UISwitch!
    
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.delegate = self
        
        isAutoFetchEnable =  UserDefaults.standard.bool(forKey: "isAutoFetchEnable")
        enableAutoFetchSwitch.setOn(isAutoFetchEnable, animated: false)
        
        autoFetchData = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(automaticallyFetchData), userInfo: nil, repeats: true)
        loadingIndicator.startAnimating()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        autoFetchData?.invalidate()
    }
    
    
    // MARK: - Private Methods
    private func setupMap() {
        mapView.centerToLocation(viewModel!.initialLocation)
    }
    
    private func setupUI() {
        setupMap()
        loadingIndicator.stopAnimating()
        
        guard let viewModel = viewModel,
              let data =  viewModel.weatherData,
              let airport = viewModel.selectedAirport else { return }
        let weather = data.report.conditions
        let forecast = data.report.forecast
        
        if  !isAutoFetchEnable {
            let dateF = DateFormatter()
            dateF.dateStyle = .medium
            dateF.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            
            if let date = dateF.date(from: weather.dateIssued) {
                let strData = viewModel.weatherDateFormatter(for: date)
                lastUpdateLabel.text = "Last update: \(strData)"
                
            }
        }
        
        if isWeatherViewEnable {
            //Display data for this type
            
            titleLable.text = "Weather for: \(airport.airportName!)"
            detailLabel.text = weather.text
            latLabel.text = "Lat: \(weather.lat)"
            longLabel.text = "Lon: \(weather.lon)"
            tempLabel.text = "Temp: \(weather.tempC)"
        }else{
            //Dispaly data for this type
            titleLable.text = "Forecast for: \(airport.airportName!)"
            detailLabel.text = forecast.text
            latLabel.text = "Lat: \(forecast.lat)"
            longLabel.text = "Lon: \(forecast.lon)"
            tempLabel.text =  "Temp: -- -- "
        }
        favoriteButton.setBackgroundImage(
            UIImage(systemName: airport.isFavorite ? "star.fill" : "star"),
            for: .normal, barMetrics: .default)
        
    }
    
    @objc private func automaticallyFetchData(){
        if isAutoFetchEnable {
            let now = viewModel?.weatherDateFormatter(for: Date())
            lastUpdateLabel.text = "Last update: \(now!)"
            
            viewModel?.autoFetch()
        }
    }
    
    // MARK: - Actions
    @IBAction func conditionsSwitch(_ sender: UISegmentedControl) {
        isWeatherViewEnable.toggle()
        setupUI()
    }
    
    @IBAction func favoriteButtonPressed(_ sender: UIBarButtonItem) {
        //Logic to mark/unmark as favorite
        guard let airport = viewModel?.selectedAirport else { return }
        airport.isFavorite.toggle()
        viewModel?.saveToPersistentStore()
        favoriteButton.setBackgroundImage(
            UIImage(systemName: airport.isFavorite ? "star.fill" : "star"),
            for: .normal, barMetrics: .default)
    }
    
    @IBAction func toggleAutoFetch(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "isAutoFetchEnable")
        isAutoFetchEnable =  UserDefaults.standard.bool(forKey: "isAutoFetchEnable")
    }
    
}

extension DetailViewController: FetchDataDelegate{
    func fetchDataReady() {
        setupUI()
    }
    
}


// MARK: - MKMapView
private extension MKMapView {
    func centerToLocation(
        _ location: CLLocation,
        regionRadius: CLLocationDistance = 5000
    ) {
        let coordinateRegion = MKCoordinateRegion(
            center: location.coordinate,
            latitudinalMeters: regionRadius,
            longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true)
    }
}
