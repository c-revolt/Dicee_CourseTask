//
//  MainPresenterTest.swift
//  Dicee_CourseTaskTests
//
//  Created by Александр Прайд on 31.10.2022.
//

import XCTest
@testable import Dicee_CourseTask

class MockView: MainInput {
    
    var leftDiceTest: UIImage?
    var rightDiceTest: UIImage?
    
    func setDice(leftimageDice: UIImage, rightImageDice: UIImage) {
        self.leftDiceTest = leftimageDice
        self.rightDiceTest = rightImageDice
    }
}

final class MainPresenterTest: XCTestCase {

    var view: MockView!
    var model: Dice!
    var presenter: MainPresenter!
    
    
    override func setUpWithError() throws {
        view = MockView()
        model = Dice(leftDiceString: "dice1", rightDiceString: "dice2")
        presenter = MainPresenter(view: view, model: model)
    }

    override func tearDownWithError() throws {
        view = nil
        model = nil
        presenter = nil
    }

    func testModuleNotNil() {
        XCTAssertNotNil(view, ">>> view is not nil")
        XCTAssertNotNil(model, ">>> model is not nil")
        XCTAssertNotNil(presenter, ">>> presenter is not nil")
    }
    
    func testView() {
        presenter.showDice()
        
        XCTAssertEqual(view.leftDiceTest, UIImage(named: "dice1"))
        XCTAssertEqual(view.rightDiceTest, UIImage(named: "dice2"))
    }

}
