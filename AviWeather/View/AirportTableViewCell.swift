//
//  AirportTableViewCell.swift
//  AviWeather
//
//  Created by FGT MAC on 6/2/21.
//

import UIKit

class AirportTableViewCell: UITableViewCell {
    // MARK: - Properties
    var viewModel: WeatherViewModel?
    var airport: Airport? {
        didSet{
            updateViews()
        }
    }
    
    // MARK: - Outlets
    @IBOutlet weak var airportNameLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    
    // MARK: - Actions
    
    @IBAction func favoriteButtonPressed(_ sender: UIButton) {
        airport?.isFavorite.toggle()
        viewModel?.saveToPersistentStore()
    }
    
    func updateViews() {
        airportNameLabel.text = airport?.airportName
        favoriteButton.setBackgroundImage(
            UIImage(systemName: airport!.isFavorite ? "star.fill" : "star")
            , for: .normal)
    }
    
}
