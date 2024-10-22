//
//  DateExtension.swift
//  Apetizer
//
//  Created by Cami Mamedov on 04.02.24.
//

import Foundation

extension Date{
    var birthStartYear: Date{
        Calendar.current.date(byAdding: .year, value: -100, to: Date())!
    }
    
    var birthEndYear: Date{
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
}
