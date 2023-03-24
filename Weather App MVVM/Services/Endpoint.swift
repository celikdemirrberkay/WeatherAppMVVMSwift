//
//  Endpoint.swift
//  Weather App MVVM
//
//  Created by Berkay  on 24.03.2023.
//

import Foundation

struct Endpoint {
    
    static func API_URL(cityName : String) -> String {
        return "https://api.openweathermap.org/data/2.5/weather?q=\(cityName)&appid=\(WeatherConst.API_KEY)&units=metric"
    }
    
    static func IMAGE_URL(imageCode : String) -> String {
        return "http://openweathermap.org/img/w/\(imageCode).png"
    }
    
}
