//
//  MyConverter.swift
//  TempConverter
//
//  Created by Jeff Gelina on 12/15/14.
//  Copyright (c) 2014 Jeff Gelina. All rights reserved.
//

import Foundation

class MyConverter {
    init () {
        temperatureScale = .F
        temperature = 32.0
    }
    enum TempScale {
        case F, C, K
    }
    
    var temperatureScale: TempScale
    var temperature: Double
    private func convertToCelsius(temp:Double) -> Double {
        let retVal = (temp - 32.0) * (5.0 / 9.0)
        return retVal
    }
    private func convertToFahrentheit(temp:Double) -> Double {
        let retVal = temp * (9.0 / 5.0) + 32.0
        return retVal;
    }
    func convert (scale: TempScale) -> Double {
        var f = 0.0, c = 0.0, k = 0.0
        switch temperatureScale {
            case .F:
                f = temperature
                c = (f - 32.0) * (5.0 / 9.0)
                k = (f + 459.67) * (5.0 / 9.0)
            case .C:
                c = temperature
                f = c * (9.0 / 5.0) + 32.0
                k = c + 273.15
            case .K:
                k = temperature
                f = k * (9.0 / 5.0) - 459.67
                c = k - 273.15
        }
        switch scale {
            case .F: return f
            case .C: return c
            case .K: return k
        }
    }
}