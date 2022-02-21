//
//  ViewController.swift
//  #18Static
//
//  Created by Lesia Vorozhbyt on 21.02.2022.
//

import UIKit

class ViewController: UIViewController {
    var setting = Setting.shared
    var setting2 = Setting.shared
    
    lazy var intLazyValue: Int = 0

    lazy var shortDateFormat: DateFormatter = {
        let d = DateFormatter()
        d.dateStyle = .short
        print("dateFormat")
        return d
    }()
    
    
    lazy var fullDateFormat: DateFormatter = {
        let d = DateFormatter()
        d.dateStyle = .full
        print("dateFormat")
        return d
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(shortDateFormat.string(from: Date()))
        
        setting.printMainColor()
        print(Setting.secondaryColor)
        
        Setting.secondaryColor = .yellow
        print(Setting.secondaryColor)
        
        setting.changeStaticColor()
        print(Setting.secondaryColor)
        
        print(Setting.countOfObject())
        
        var setting3 = Setting.shared
        print(Setting.countOfObject())

        var setting4 = Setting.shared
        print(Setting.countOfObject())
        
        intLazyValue = 45
        print(intLazyValue)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(Setting.countOfObject())
    }
}

