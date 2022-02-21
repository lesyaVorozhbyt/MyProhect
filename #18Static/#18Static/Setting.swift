//
//  Setting.swift
//  #18Static
//
//  Created by Lesia Vorozhbyt on 21.02.2022.
//

import Foundation
import UIKit

class Setting {
    
   static var shared = Setting()
    
    private static var settingsCounter = 0
    var mainColor: UIColor = .systemBackground
    
    static var secondaryColor: UIColor = .red

   private init() {
        Setting.settingsCounter += 1
    }
    
    deinit {
        Setting.settingsCounter -= 1
    }
    
    func printMainColor() {
        print("App Main Color \(mainColor)")
    }
    
    func changeStaticColor() {
        Setting.secondaryColor = .blue
    }
    
   static func countOfObject() -> Int {
        return settingsCounter
    }
}

