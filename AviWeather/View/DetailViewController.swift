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
    
    // MARK: - Outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        loadingIndicator.startAnimating()
    }
    

    // MARK: - Private Methods
    private func setupMap() {
        mapView.centerToLocation(viewModel!.initialLocation)
    }
    
    private func setupUI() {
        setupMap()
        loadingIndicator.stopAnimating()
        
        guard let data =  viewModel?.weatherData else { return }
        let weather = data.report.conditions
        let forecast = data.report.forecast
        
        
        if isWeatherViewEnable {
            //Display data for this type
            
            titleLable.text = "Weather"
            detailLabel.text = weather.text
            latLabel.text = "Lat: \(weather.lat)"
            longLabel.text = "Lon: \(weather.lon)"
            tempLabel.text = "Temp: \(weather.tempC ?? 0.0)"
        }else{
            //Dispaly data for this type
            titleLable.text = "Forecast"
            detailLabel.text = forecast.text
            latLabel.text = "Lat: \(forecast.lat)"
            longLabel.text = "Lon: \(forecast.lon)"
            tempLabel.text = "Temp: -- -- "
        }
        guard let airport = viewModel?.selectedAirport else { return }
        favoriteButton.setBackgroundImage(
            UIImage(systemName: airport.isFavorite ? "star.fill" : "star"),
            for: .normal, barMetrics: .default)
     
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
