//
//  MainIO.swift
//  Dicee_CourseTask
//
//  Created by Александр Прайд on 30.10.2022.
//

import UIKit

protocol MainInput: AnyObject {
    func setDice(leftimageDice: UIImage, rightImageDice: UIImage)
}

protocol MainOutput: AnyObject {
    
    init(view: MainInput, model: Dice)
    func showDice()
}
