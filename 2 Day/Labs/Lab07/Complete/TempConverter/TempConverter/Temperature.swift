//
//  Temperature.swift
//  TempConverter
//

import Foundation

enum TempScale: Int {
    case F, C, K
}

struct Temperature {
    var scale:TempScale
    var value:Double
}

class TempConverter {
    func convert(t:Temperature, toScale:TempScale) -> Temperature {
        var f = 0.0, c = 0.0, k = 0.0
        
        switch t.scale {
        case .F:
            f = t.value
            c = (f - 32.0) * (5.0 / 9.0)
            k = (f + 459.67) * (5.0 / 9.0)
        case .C:
            c = t.value
            f = c * (9.0 / 5.0) + 32.0
            k = c + 273.15
        case .K:
            k = t.value
            f = k * (9.0 / 5.0) - 459.67
            c = k - 273.15
        }
        switch toScale {
        case .F: return Temperature(scale: .F, value: f)
        case .C: return Temperature(scale: .C, value: c)
        case .K: return Temperature(scale: .K, value: k)
        }
    }
}
