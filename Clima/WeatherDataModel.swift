//
//  WeatherDataModel.swift
//  WeatherApp
//
//  Created by Angela Yu on 24/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class WeatherDataModel {

    //Declare your model variables here
    var temperature: Int = 0
    var condition: Int = 0
    var city: String = ""
    var country: String = ""
    var weatherIconName: String = ""
    var weatherBackgroundName: String = ""
    var weatherCondition: String = ""
    
    //This method turns a condition code into the name of the weather condition image
    
    func updateWeatherIcon(condition: Int) -> String {
        
    switch (condition) {
    
        case 0...300 :
            return "tstorm1"
        
        case 301...500 :
            return "light_rain"
        
        case 501...600 :
            return "shower3"
        
        case 601...700 :
            return "snow4"
        
        case 701...771 :
            return "fog"
        
        case 772...799 :
            return "tstorm3"
        
        case 800 :
            return "sunny"
        
        case 801...804 :
            return "cloudy2"
        
        case 900...903, 905...1000  :
            return "tstorm3"
        
        case 903 :
            return "snow5"
        
        case 904 :
            return "sunny"
        
        default :
            return "dunno"
        }

    }
    
    func updateWeatherBackground(condition: Int) -> String {
        
        switch (condition) {
            
        case 0...300, 772...799, 900...903, 905...1000 :
            return "backgroundThunder"
            
        case 301...500, 501...600 :
            return "backgroundRain"
            
        case 601...700, 903 :
            return "backgroundSnow"
            
        case 701...771 :
            return "backgroundFog"

        case 800, 904 :
            return "backgroundSun"
            
        case 801...804 :
            return "backgroundCloud"
            
        default :
            return "background"
        }
        
    }
    
    func updateWeatherCondition(condition: Int) -> String {
        
        switch (condition) {
            
        case 0...300, 772...799, 900...903, 905...1000 :
            return "Thunder Storms"
            
        case 301...500 :
            return "Light Rain"
            
        case 501...600 :
            return "Showers"
            
        case 601...700, 903 :
            return "Snow"
            
        case 701...771 :
            return "Fog"
            
        case 800 :
            return "Sunny"
            
        case 801...804 :
            return "Cloudy"

        case 904 :
            return "Sunny"
            
        default :
            return "Conditions not available"
        }
        
    }
}
