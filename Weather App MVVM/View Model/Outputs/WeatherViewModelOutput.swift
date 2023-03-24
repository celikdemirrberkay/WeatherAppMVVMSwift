//
//  WeatherViewModelOutput.swift
//  Weather App MVVM
//
//  Created by Berkay  on 24.03.2023.
//

import Foundation

protocol WeatherViewModelOutput : AnyObject{
    
    func updateUI(cityName : String , description : String , temp : Double)
    
}
