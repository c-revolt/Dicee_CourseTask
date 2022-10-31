//
//  MainPresenter.swift
//  Dicee_CourseTask
//
//  Created by Александр Прайд on 30.10.2022.
//

import UIKit

final class MainPresenter: MainOutput {
    
    weak var view: MainInput?
    var model: Dice
    
    required init(view: MainInput, model: Dice) {
        self.view = view
        self.model = model
    }
    
    func showDice() {
        
        let diceArray = [K.dice1, K.dice2, K.dice3, K.dice4, K.dice5, K.dice6]
         
        guard var leftDiceImage = UIImage(named: self.model.leftDiceString),
        var rightDiceImage = UIImage(named:self.model.rightDiceString) else { return }
        
        leftDiceImage = UIImage(named: diceArray[Int.random(in: 0...5)]) ?? UIImage()
        rightDiceImage = UIImage(named: diceArray[Int.random(in: 0...5)]) ?? UIImage()
       
        self.view?.setDice(leftimageDice: leftDiceImage, rightImageDice: rightDiceImage)
    }
    
    
    
}
