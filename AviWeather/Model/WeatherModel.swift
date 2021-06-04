//
//  WeatherModel.swift
//  AviWeather
//
//  Created by FGT MAC on 6/2/21.
//

import Foundation


struct Weather: Codable {
    let report: Report
}

struct Report: Codable {
    let conditions: Conditions
    let forecast: Forecast
}


struct Conditions: Codable {
    let text: String
    let tempC: Double?
    let lat: Float
    let lon: Float

}


struct Forecast: Codable {
    let text: String
    let lat: Float
    let lon: Float
}


