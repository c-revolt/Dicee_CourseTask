//
//  ViewController.swift
//  Dicee_CourseTask
//
//  Created by Александр Прайд on 30.10.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var presenter: MainPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        self.presenter.showDice()
    }
    
    private func setupUI(){
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }
    
    
}

extension MainViewController: MainInput {
    func setDice(leftimageDice: UIImage, rightImageDice: UIImage) {
        self.diceImageView1.image = leftimageDice
        self.diceImageView2.image = rightImageDice
    }
    
   
    
    
}
