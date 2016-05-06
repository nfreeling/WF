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
        return Temperature(scale: .F, value: 0.0)
    }
}
