//
//  AviWeatherTests.swift
//  AviWeatherTests
//
//  Created by FGT MAC on 6/13/21.
//

import XCTest
@testable import AviWeather


class AviWeatherTests: XCTestCase {

    func testLoadingValidData() {
        //Dependency Injection init
        let mock = MockDataLoader(data: weatherJSON!)
        let controller = Network(loader: mock)
        let resultsEcpectation = expectation(description: "wait for search results")
        var weatherData: Weather?
        
        controller.fetchWeather(for: "kpwm") { (weather, error) in
            weatherData = weather
            resultsEcpectation.fulfill()
        }
        
        //Pause for 2 secounds after the expectation is fulfill
        wait(for: [resultsEcpectation], timeout: 2.0)
         
        //Test the incoming data
        XCTAssertEqual(weatherData!.report.conditions.tempC, 15.0, "Expecting 15.0 for Condition Temp but recieved \(weatherData!.report.conditions.tempC)")
        
        XCTAssert(weatherData!.report.forecast.lat == 43.645645, "Expecting 43.645645 but got \(weatherData!.report.forecast.lat)")
    }

}
