//
//  WeatherViewModel.swift
//  Weather App MVVM
//
//  Created by Berkay  on 23.03.2023.
//

import Foundation

protocol IWeatherViewModel {
    
    var weatherWebService : IWebServices {get}
    func fetchAllIDatas()
    func getWeatherImage()
    
    
}

class WeatherViewModel {
    
    var weatherWebService: IWebServices
    weak var output : WeatherViewModelOutput?
    
    init() {
        self.weatherWebService = WebServices()
    }
    
    
    func fetchAllIDatas() {
        weatherWebService.downloadDataFromAPI(url: URL(string: Endpoint.API_URL(cityName: "istanbul"))!) { [weak self] weathers in
            self?.output?.updateUI(
                cityName: weathers?.name ?? "No City !",
                description: weathers?.weather[0].main ?? "No data !",
                temp: weathers?.main.temp ?? 0
            )
        }
    }
    
    func getWeatherImage() {
        
    }
    
    
    
    
    
    
    
}
