//
//  Assembly.swift
//  Dicee_CourseTask
//
//  Created by Александр Прайд on 31.10.2022.
//

import UIKit

protocol AssemblyProtocol {
    static func createMainModule() -> UIViewController
}

class Assembly: AssemblyProtocol {
    static func createMainModule() -> UIViewController {
        let model = Dice(leftDiceString: K.dice1, rightDiceString: K.dice1)
        let view = MainViewController()
        let presenter = MainPresenter(view: view, model: model)
        view.presenter = presenter
        
        return view
    }
    
    
}
