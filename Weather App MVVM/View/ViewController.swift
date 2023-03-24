//
//  ViewController.swift
//  Weather App MVVM
//
//  Created by Berkay  on 23.03.2023.
//

import UIKit

class ViewController: UIViewController , WeatherViewModelOutput{
    
    private var viewModel : WeatherViewModel = WeatherViewModel()

    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var situationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchAllIDatas()
        viewModel.output = self
        
    }
    
    @objc func addButtonClicked(){
        
    }
    
    func updateUI(cityName: String, description: String, temp: Double) {
        DispatchQueue.main.async {
            self.cityLabel.text = cityName
            self.degreeLabel.text = "\(temp) ℃"
            self.situationLabel.text = description
            
        }
    }
    
    
    
    
}

